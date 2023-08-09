import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart' hide SearchBar;
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:show_characters_viewer/character_shower/character_shower.dart';
import 'package:show_characters_viewer/flavors.dart';

part 'home_layout.freezed.dart';

// Custom exception class to handle specific cases when a process is aborted.
class AbortedException implements Exception {}

// Provider to fetch a list of characters.
final charactersProvider = FutureProvider.autoDispose<CharactersListResponse>(
  (ref) async {
    final repository = ref.watch(repositoryProvider);
    return
        // await // if live network call
        repository.fetchCharacters();
  },
);

// Freezed class to handle character indexing.
@freezed
class CharacterIndex with _$CharacterIndex {
  factory CharacterIndex({
    required int index,
  }) = _CharacterIndex;
}

// Provider to fetch a specific character by index.
final characterAtIndex = Provider.autoDispose
    .family<AsyncValue<NewCharacter>, CharacterIndex>((ref, query) {
  final charactersResponse = ref.watch(charactersProvider);

  return charactersResponse.whenData(
    (response) => response.characters[query.index],
  );
});

// StateNotifier to manage the selected character's state.
class SelectedCharacterNotifier extends StateNotifier<String?> {
  SelectedCharacterNotifier() : super(null);

  void selectCharacter(String characterId) {
    state = characterId;
  }
}

final selectedCharacterProvider =
    StateNotifierProvider<SelectedCharacterNotifier, String?>(
        (ref) => SelectedCharacterNotifier());

// Widget layout specifically designed for tablets.

// A custom SliverAppBar that changes its title color based on the scroll offset.
class AnimatedColorSliverAppBar extends HookWidget {
  const AnimatedColorSliverAppBar({Key? key, required this.scrollController})
      : super(key: key);

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: scrollController,
      builder: (BuildContext context, Widget? child) {
        final offset = scrollController.offset;
        final color = Color.lerp(Colors.white, Colors.black, offset / 200)!;

        return SliverAppBar(
          actions: const [SearchBar()],
          expandedHeight: 200,
          flexibleSpace: FlexibleSpaceBar(
            title: SizedBox(
                height: 40,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    F.title,
                    style: TextStyle(
                      color: color, // Adjusted color fading here
                      fontSize: 18,
                    ),
                  ),
                )),
            centerTitle: true,
            background: Image.network(
              F.placeholderUrl,
              fit: BoxFit.cover,
              colorBlendMode: BlendMode.multiply,
              color: Colors.grey.shade500,
            ),
            titlePadding: const EdgeInsetsDirectional.only(bottom: 8),
          ),
          pinned: true,
        );
      },
    );
  }
}

// A SliverList widget to display the list of characters.
class CharacterSliverList extends ConsumerWidget {
  final int itemCount;

  const CharacterSliverList({Key? key, required this.itemCount})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return ProviderScope(
            overrides: [
              _characterIndex.overrideWithValue(index),
            ],
            child: const CharacterItem(),
          );
        },
        childCount: itemCount,
      ),
    );
  }
}

// The main Home widget that displays either a loading spinner, error message, or the list of characters.
class Home extends HookConsumerWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = useScrollController();

    return ref.watch(charactersProvider).when(
          loading: () => Container(
            color: Colors.white,
            child: const Center(child: CircularProgressIndicator()),
          ),
          error: (err, stack) {
            return Scaffold(
              appBar: AppBar(title: const Text('Error - Try Again')),
              body: Center(child: Text('$err')),
            );
          },
          data: (charactersListResponse) {
            return Scaffold(
              body: RefreshIndicator(
                onRefresh: () {
                  ref.invalidate(selectedCharacterProvider);
                  return ref.read(charactersProvider.future);
                },
                child: Listener(
                  onPointerDown: (_) {
                    if (FocusManager.instance.primaryFocus?.context?.widget
                        is! ListTile) {
                      FocusManager.instance.primaryFocus?.unfocus();
                    }
                  },
                  child: CustomScrollView(
                    controller: scrollController,
                    slivers: [
                      AnimatedColorSliverAppBar(
                          scrollController: scrollController),
                      CharacterSliverList(
                          itemCount: charactersListResponse.characters.length),
                    ],
                  ),
                ),
              ),
            );
          },
        );
  }
}

final _characterIndex = Provider<int>((ref) => throw UnimplementedError());

// A widget to display individual character details.
class CharacterItem extends HookConsumerWidget {
  const CharacterItem({Key? key}) : super(key: key);

  String generateMd5(String input) {
    return md5.convert(utf8.encode(input)).toString();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceService = ref.read(deviceServiceProvider);

    final index = ref.watch(_characterIndex);
    final characterResponse =
        ref.watch(characterAtIndex(CharacterIndex(index: index)));

    return characterResponse.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (err, stack) => Text('Error $err'),
      data: (character) {
        return GestureDetector(
          onTap: () async {
            final shouldPreventNavigation =
                ref.watch(preventNavigationProvider);
            final isSearchBarFocused = ref.watch(searchBarFocusProvider);

            if (shouldPreventNavigation || isSearchBarFocused) {
              return;
            }

            if (!deviceService.isMobileDevice()) {
              ref
                  .read(selectedCharacterProvider.notifier)
                  .selectCharacter(character.hash ?? '');
            } else {
              Navigator.pushNamed(context, '/characters/${character.hash}');
            }
          },
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(character.name ?? 'No description available'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

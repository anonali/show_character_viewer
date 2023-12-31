// ignore_for_file: use_setters_to_change_properties

import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart' hide SearchBar;
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:show_characters_viewer/character_shower/character_shower.dart';
import 'package:show_characters_viewer/flavors.dart';

// part 'search.freezed.dart';

// Custom exception class to handle specific cases when a process is aborted.
class AbortedException implements Exception {}

// A custom SliverAppBar that changes its title color based on the
// scroll offset.
class AnimatedColorSliverAppBar extends HookWidget {
  const AnimatedColorSliverAppBar({required this.scrollController, super.key});

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
                padding: const EdgeInsets.all(8),
                child: Text(
                  F.title,
                  style: TextStyle(
                    color: color, // Adjusted color fading here
                    fontSize: 18,
                  ),
                ),
              ),
            ),
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
  const CharacterSliverList({required this.itemCount, super.key});
  final int itemCount;

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

class SearchPage extends HookConsumerWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = useScrollController();

    return ref.watch(charactersProvider).when(
          // ignore: use_colored_box
          loading: () => Container(
            color: F.theme.primaryColorDark,
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
                  // ref.invalidate(charactersProvider);
                  return Future.wait([
                    ref.refresh(
                      charactersProvider.future,
                    ),
                  ]);
                  // onRefresh: () {
                  //   ref.invalidate(selectedCharacterProvider);
                  //   ref.invalidate(charactersProvider);
                  //   return ref.read(charactersProvider.future);
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
                        scrollController: scrollController,
                      ),
                      CharacterSliverList(
                        itemCount: charactersListResponse.characters.length,
                      ),
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
  const CharacterItem({super.key});

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
              ref
                  .read(selectedCharacterProvider.notifier)
                  .selectCharacter(character.hash ?? '');
              await Navigator.pushNamed(
                context,
                '/characters/${character.hash}',
              );
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

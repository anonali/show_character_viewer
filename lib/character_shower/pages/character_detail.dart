// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:show_characters_viewer/character_shower/character_shower.dart';
import 'package:show_characters_viewer/flavors.dart';

final selectedCharacterId = Provider<String>((ref) {
  throw UnimplementedError();
});

final character =
    FutureProvider.autoDispose.family<NewCharacter, String>((ref, hash) async {
  final repository = ref.watch(repositoryProvider);
  final character = await repository.fetchCharacterByHash(hash);

  /// Cache the Character once it is successfully obtained.
  ref.keepAlive();
  return character;
});

class CharacterView extends HookConsumerWidget {
  const CharacterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final idx = ref.watch(selectedCharacterId);

    return ref.watch(character(idx)).when(
          loading: () =>
              const Scaffold(body: Center(child: CircularProgressIndicator())),
          error: (err, stack) => Scaffold(
            appBar: AppBar(title: const Text('Error')),
            body: Center(child: Text('Failed to load character: $err')),
          ),
          data: (character) => Scaffold(
            appBar: AppBar(title: Text(character.name ?? 'No name found')),
            body: Stack(
              fit: StackFit.expand,
              children: [
                // Background Image
                LoadingImage(url: character.imageUrl ?? F.placeholderUrl),
                // Overlay for Description
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(
                              0.6,
                            ), // semi-transparent background
                            borderRadius:
                                BorderRadius.circular(15), // Rounded edges
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Text(
                              character.description ??
                                  'Sorry, no description available...',
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20)
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
  }
}

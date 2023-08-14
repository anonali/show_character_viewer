// Provider to fetch a list of characters.
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:show_characters_viewer/character_shower/character_shower.dart';

final charactersProvider = FutureProvider.autoDispose<CharactersListResponse>(
  (ref) async {
    final repository = ref.watch(repositoryProvider);
    return
        // await // if live network call
        repository.fetchCharacters();
  },
);

// Provider to fetch a specific character by index.
final characterAtIndex = Provider.autoDispose
    .family<AsyncValue<NewCharacter>, CharacterIndex>((ref, query) {
  final charactersResponse = ref.watch(charactersProvider);

  return charactersResponse.whenData(
    (response) => response.characters[query.index],
  );
});

final selectedCharacterId = Provider<String>((ref) {
  throw UnimplementedError();
});

// StateNotifier to manage the selected character's state.
class SelectedCharacterNotifier extends StateNotifier<String?> {
  SelectedCharacterNotifier() : super(null);

  // ignore: use_setters_to_change_properties
  void selectCharacter(String characterId) {
    state = characterId;
  }
}

final selectedCharacterProvider =
    StateNotifierProvider<SelectedCharacterNotifier, String?>(
  (ref) => SelectedCharacterNotifier(),
);

// Provider for the Dio HTTP client.
final dioProvider = Provider((ref) => Dio());

final character =
    FutureProvider.autoDispose.family<NewCharacter, String>((ref, hash) async {
  final repository = ref.watch(repositoryProvider);
  final character = await repository.fetchCharacterByHash(hash);

  /// Cache the Character once it is successfully obtained.
  ref.keepAlive();
  return character;
});

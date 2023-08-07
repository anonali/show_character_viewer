library characters;

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:dio/dio.dart';
import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:show_character_viewer/models/freezed_repository_models.dart';

const APIURL = String.fromEnvironment('CHARACTER_VIEWER_API');

// a provider for the dio client, instantiated
final dioProvider = Provider((ref) => Dio());

final repositoryProvider = Provider(CharacterRepository.new);

final charactersCount = Provider.family<int, String>(
  (ref, search) {
    final repository = ref.watch(repositoryProvider);
    return repository.searchCharacters(search).length;
  },
);

final characterAtIndex = Provider.family<NewCharacter, CharacterOffset>(
  (ref, offset) {
    final repository = ref.watch(repositoryProvider);
    return repository.searchCharacters(offset.text)[offset.offset];
  },
);

class CharacterRepository {
  CharacterRepository(this.ref);

  final Ref ref;

  final _characterCache = <String, NewCharacter>{};

  String _generateHash(String input) {
    return md5.convert(utf8.encode(input)).toString();
  }

  Future<CharactersListResponse> fetchCharacters() async {
    final response = await _get();

    final updatedCharacters = response.relatedTopics.map((e) {
      final character = NewCharacter.fromRelatedTopic(e); // Use the new factory

      final hash = _generateHash(character.firstURL);
      _characterCache[hash] = character.copyWith(hash: hash);

      return character.copyWith(
          hash: hash); // Return the character with the updated hash
    }).toList(growable: false);

    final result = CharactersListResponse(
      characters: updatedCharacters,
      totalCount: updatedCharacters.length,
    );

    return result;
  }

  Future<NewCharacter> fetchCharacter(int id) async {
    // Using the index as a unique identifier for each character
    final character = _characterCache[id];
    if (character == null) {
      throw Exception("Character not found for: $id");
    }
    return character;
  }

  Future<NewCharacter> fetchCharacterByHash(String hash) async {
    // Using the hash as a unique identifier for each character
    final character = _characterCache[hash];
    if (character == null) {
      throw Exception("Character not found for hash: $hash");
    }
    return character;
  }

  // NewCharacter? fetchCharacter(String url) {
  //   return _characterCache[url];
  // }

// main repository being called here:
// environment setup here
  List<NewCharacter> searchCharacters(String query) {
    return _characterCache.values.where((character) {
      return character.text.toLowerCase().contains(query.toLowerCase());
    }).toList();
  }

// primary api call to the server:
  Future<CharacterResponse> _get({
    CancelToken? cancelToken,
  }) async {
    try {
      const url = APIURL;

      final result =
          await ref.read(dioProvider).get(url, cancelToken: cancelToken);

      // Check if result.data is a string and try to decode it
      Map<String, Object?> decoded;
      if (result.data is String) {
        try {
          decoded = json.decode(result.data) as Map<String, Object?>;
        } catch (e) {
          throw Exception('Error decoding the string response: $e');
        }
      } else if (result.data is Map<String, Object?>) {
        decoded = result.data;
      } else {
        throw Exception('Unexpected data structure: ${result.data}');
      }

      // We can directly convert the decoded data to our model
      return CharacterResponse.fromJson(decoded);
    } catch (e) {
      rethrow; // Use rethrow instead of throw e
    }
  }
}

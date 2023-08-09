import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:show_characters_viewer/character_shower/data/character_shower_models.dart';

// URL for the API endpoint, retrieved from environment variables.
const APIURL = String.fromEnvironment('CHARACTER_VIEWER_API');

// Provider for the Dio HTTP client.
final dioProvider = Provider((ref) => Dio());

// Provider for the CharacterRepository.
final repositoryProvider = Provider(CharacterRepository.new);

// Provider to get the count of characters for a given search term.
final charactersCount = Provider.family<int, String>(
  (ref, search) {
    final repository = ref.watch(repositoryProvider);
    // Fetch and return the count of characters that match the search term.
    return repository.searchCharacters(search).length;
  },
);

// Provider to get a character based on a given offset.
final characterAtOffset = Provider.family<NewCharacter, CharacterOffset>(
  (ref, offset) {
    final repository = ref.watch(repositoryProvider);
    // Retrieve a character based on the provided offset.
    return repository.searchCharacters(offset.text)[offset.offset];
  },
);

class CharacterRepository {
  CharacterRepository(this.ref);

  final Ref ref;

  // Cache to store characters and reduce unnecessary API calls.
  final _characterCache = <String, NewCharacter>{};

  // Utility function to generate a hash for a given input string.
  String _generateHash(String input) {
    return md5.convert(utf8.encode(input)).toString();
  }

  // Fetch all characters from the API.
  Future<CharactersListResponse> fetchCharacters() async {
    final response = await _get();

    // Map the API response to the NewCharacter model.
    final updatedCharacters = response.relatedTopics.map((e) {
      final character = NewCharacter.fromRelatedTopic(e);
      final hash = _generateHash(character.firstURL);
      _characterCache[hash] = character.copyWith(hash: hash);
      return character.copyWith(hash: hash);
    }).toList(growable: false);

    // Return the mapped characters.
    return CharactersListResponse(
      characters: updatedCharacters,
      totalCount: updatedCharacters.length,
    );
  }

  // Fetch a character based on its index.
  Future<NewCharacter> fetchCharacter(int id) async {
    try {
      final character = _characterCache.values.elementAt(id);
      return character;
    } catch (e) {
      throw Exception('Character not found for: $id');
    }
  }

  // Fetch a character based on its hash value.
  Future<NewCharacter> fetchCharacterByHash(String hash) async {
    final character = _characterCache[hash];
    if (character == null) {
      throw Exception('Character not found for hash: $hash');
    }
    return character;
  }

  // Search characters based on a query string.
  List<NewCharacter> searchCharacters(String query) {
    return _characterCache.values.where((character) {
      return character.text.toLowerCase().contains(query.toLowerCase());
    }).toList();
  }

  // Private method to make an API request.
  Future<CharacterResponse> _get({CancelToken? cancelToken}) async {
    try {
      const url = APIURL;
      // Make the API request using the Dio client.
      final result =

          // TODO: consider refactoring
          // ignore: inference_failure_on_function_invocation
          await ref.read(dioProvider).get(url, cancelToken: cancelToken);

      Map<String, dynamic> responseData;

      // Handle the API response based on its data type.
      if (result.data is String) {
        responseData =
            json.decode(result.data.toString()) as Map<String, dynamic>;
      } else if (result.data is Map<String, dynamic>) {
        responseData = result.data as Map<String, dynamic>;
      } else {
        // TODO: consider refactoring
        // ignore: avoid_dynamic_calls
        throw Exception('Unexpected data type: ${result.data.runtimeType}');
      }

      return CharacterResponse.fromJson(responseData);
    } catch (e) {
      rethrow;
    }
  }
}

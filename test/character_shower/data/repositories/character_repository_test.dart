import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/mockito.dart';
import 'package:show_characters_viewer/character_shower/data/repositories/characters_repository.dart';

import 'fake_characters_repository.dart';

class MockDio extends Mock implements Dio {}

void main() {
  final fakeDio = FakeDio();

  // Reset the throwError flag before each test
  setUp(() {
    fakeDio.throwError = false;
  });

  // testing for successful get
  test('Fetching characters successfully', () async {
    final container =
        ProviderContainer(overrides: [dioProvider.overrideWithValue(fakeDio)]);
    final repository = container.read(repositoryProvider);
    final charactersResponse = await repository.fetchCharacters();

    expect(charactersResponse.characters, isNotEmpty);

    container.dispose();
  });

  // testing for successful error handling
  test('Simulating a network error', () async {
    fakeDio.throwError = true;

    final container =
        ProviderContainer(overrides: [dioProvider.overrideWithValue(fakeDio)]);
    final repository = container.read(repositoryProvider);

    expect(
      // ignore: unnecessary_await_in_return
      () async => await repository.fetchCharacters(),
      throwsA(isA<DioException>()),
    );

    container.dispose();
  });
}

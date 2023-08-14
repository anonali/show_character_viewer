import 'dart:developer';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:show_characters_viewer/character_shower/character_shower.dart';

class ProviderLogger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase<Object?> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    if (newValue is AsyncData) {
      _handleAsyncDataLogging(provider, newValue);
    } else {
      logStructured(
        type: 'Update',
        provider: provider,
        previousValue: previousValue,
        newValue: newValue,
      );
    }

    super.didUpdateProvider(provider, previousValue, newValue, container);
  }

  void _handleAsyncDataLogging(
    ProviderBase<Object?> provider,
    AsyncData<dynamic> asyncData,
  ) {
    final value = asyncData.value;
    if (provider == selectedCharacterProvider && value is NewCharacter) {
      final shortDescription = (value.description?.length ?? 0) > 50
          ? '${value.description?.substring(0, 50)}...'
          : value.description ?? 'No description provided';

      logStructured(
        type: 'Character Update',
        provider: provider,
        data: {
          'Name': value.name,
          'Description': shortDescription,
          'Image': value.imageUrl,
        },
      );
    } else if (value is CharactersListResponse) {
      final characterNames =
          value.characters.map((c) => c.name).take(10).join(', ');
      final additionalText = value.characters.length > 10 ? '... and more' : '';

      logStructured(
        type: 'CharactersList Update',
        provider: provider,
        data: {
          'Total Characters': value.totalCount,
          'Characters': '$characterNames $additionalText',
        },
      );
    }
  }

  void logStructured({
    required String type,
    required ProviderBase<Object?> provider,
    Object? previousValue,
    Object? newValue,
    Map<String, dynamic>? data,
  }) {
    final logData = {
      'Type': type,
      'Provider': provider.name ?? provider.runtimeType,
      if (previousValue != null) 'Previous Value': previousValue,
      if (newValue != null) 'New Value': newValue,
      if (data != null) ...data,
    };
    log(logData.toString());
  }
}

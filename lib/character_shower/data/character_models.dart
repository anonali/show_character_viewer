// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:show_characters_viewer/flavors.dart';

part 'character_models.freezed.dart';
part 'character_models.g.dart';

@freezed
class CharacterOffset with _$CharacterOffset {
  const factory CharacterOffset({
    required int offset, // The actual offset value.
    @Default('') String text,
  }) = _CharacterOffset;

  factory CharacterOffset.fromJson(Map<String, dynamic> json) =>
      _$CharacterOffsetFromJson(json);
}

@freezed
class CharactersListResponse with _$CharactersListResponse {
  factory CharactersListResponse({
    required List<NewCharacter> characters,
    required int totalCount,
  }) = _CharactersListResponse;

  factory CharactersListResponse.fromJson(Map<String, dynamic> json) =>
      _$CharactersListResponseFromJson(json);
}

@freezed
class NewCharacter with _$NewCharacter {
  const factory NewCharacter({
    required String firstURL,
    required String text,
    String? name,
    String? description,
    String? imageUrl,
    Icon? icon,
    String? hash,
  }) = _NewCharacter;

  // Factory constructor for JSON serialization
  @override
  factory NewCharacter.fromJson(Map<String, dynamic> json) =>
      _$NewCharacterFromJson(json);

  // Factory constructor to create a NewCharacter from a RelatedTopic object.
  factory NewCharacter.fromRelatedTopic(RelatedTopic relatedTopic) {
    // Extracts the name and description from the related topic text.
    final parts = relatedTopic.text.split(' - ');
    final name = parts[0];
    final description = parts.length > 1 ? parts[1] : '';
    var imageUrl = "https://duckduckgo.com${relatedTopic.icon.url ?? ''}";
    if (imageUrl == 'https://duckduckgo.com') {
      imageUrl = F.placeholderUrl;
    }

    return NewCharacter(
      firstURL: relatedTopic.firstURL,
      icon: relatedTopic.icon,
      text: relatedTopic.text,
      name: name,
      description: description,
      imageUrl: imageUrl,
    );
  }
}

// Represents the icon of a character.
@freezed
class Icon with _$Icon {
  factory Icon({
    @JsonKey(name: 'Height') String? height,
    @JsonKey(name: 'URL') String? url,
    @JsonKey(name: 'Width') String? width,
  }) = _Icon;

  // Factory constructor to create an Icon from JSON data.
  factory Icon.fromJson(Map<String, Object?> json) => _$IconFromJson(json);
}

// Represents the response containing related character topics.
@freezed
class CharacterResponse with _$CharacterResponse {
  factory CharacterResponse({
    @JsonKey(name: 'RelatedTopics') required List<RelatedTopic> relatedTopics,
  }) = _CharacterResponse;

  // Factory constructor to create a CharacterResponse from JSON data.
  factory CharacterResponse.fromJson(Map<String, Object?> json) =>
      _$CharacterResponseFromJson(json);
}

// Represents a related topic of a character.
@freezed
class RelatedTopic with _$RelatedTopic {
  factory RelatedTopic({
    @JsonKey(name: 'FirstURL') required String firstURL,
    @JsonKey(name: 'Icon') required Icon icon,
    @JsonKey(name: 'Result') required String result,
    @JsonKey(name: 'Text') required String text,
  }) = _RelatedTopic;

  // Factory constructor to create a RelatedTopic from JSON data.
  factory RelatedTopic.fromJson(Map<String, Object?> json) =>
      _$RelatedTopicFromJson(json);
}

// Represents the data class for characters.
@freezed
class CharacterData with _$CharacterData {
  factory CharacterData({
    required List<Map<String, Object?>>
        relatedTopics, // List of related topics.
  }) = _CharacterData;

  // Factory constructor to create CharacterData from JSON data.
  factory CharacterData.fromJson(Map<String, Object?> json) =>
      _$CharacterDataFromJson(json);
  CharacterData._();

  // Getter method to retrieve the total number of related topics.
  int get total => relatedTopics.length;
}

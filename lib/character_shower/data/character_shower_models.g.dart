// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'character_shower_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CharacterOffset _$$_CharacterOffsetFromJson(Map<String, dynamic> json) =>
    _$_CharacterOffset(
      offset: json['offset'] as int,
      text: json['text'] as String? ?? '',
    );

Map<String, dynamic> _$$_CharacterOffsetToJson(_$_CharacterOffset instance) =>
    <String, dynamic>{
      'offset': instance.offset,
      'text': instance.text,
    };

_$_CharactersListResponse _$$_CharactersListResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CharactersListResponse(
      characters: (json['characters'] as List<dynamic>)
          .map((e) => NewCharacter.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCount: json['totalCount'] as int,
    );

Map<String, dynamic> _$$_CharactersListResponseToJson(
        _$_CharactersListResponse instance) =>
    <String, dynamic>{
      'characters': instance.characters,
      'totalCount': instance.totalCount,
    };

_$_NewCharacter _$$_NewCharacterFromJson(Map<String, dynamic> json) =>
    _$_NewCharacter(
      firstURL: json['firstURL'] as String,
      text: json['text'] as String,
      name: json['name'] as String?,
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String?,
      icon: json['icon'] == null
          ? null
          : Icon.fromJson(json['icon'] as Map<String, dynamic>),
      hash: json['hash'] as String?,
    );

Map<String, dynamic> _$$_NewCharacterToJson(_$_NewCharacter instance) =>
    <String, dynamic>{
      'firstURL': instance.firstURL,
      'text': instance.text,
      'name': instance.name,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'icon': instance.icon,
      'hash': instance.hash,
    };

_$_Icon _$$_IconFromJson(Map<String, dynamic> json) => _$_Icon(
      height: json['Height'] as String?,
      url: json['URL'] as String?,
      width: json['Width'] as String?,
    );

Map<String, dynamic> _$$_IconToJson(_$_Icon instance) => <String, dynamic>{
      'Height': instance.height,
      'URL': instance.url,
      'Width': instance.width,
    };

_$_CharacterResponse _$$_CharacterResponseFromJson(Map<String, dynamic> json) =>
    _$_CharacterResponse(
      relatedTopics: (json['RelatedTopics'] as List<dynamic>)
          .map((e) => RelatedTopic.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CharacterResponseToJson(
        _$_CharacterResponse instance) =>
    <String, dynamic>{
      'RelatedTopics': instance.relatedTopics,
    };

_$_RelatedTopic _$$_RelatedTopicFromJson(Map<String, dynamic> json) =>
    _$_RelatedTopic(
      firstURL: json['FirstURL'] as String,
      icon: Icon.fromJson(json['Icon'] as Map<String, dynamic>),
      result: json['Result'] as String,
      text: json['Text'] as String,
    );

Map<String, dynamic> _$$_RelatedTopicToJson(_$_RelatedTopic instance) =>
    <String, dynamic>{
      'FirstURL': instance.firstURL,
      'Icon': instance.icon,
      'Result': instance.result,
      'Text': instance.text,
    };

_$_CharacterData _$$_CharacterDataFromJson(Map<String, dynamic> json) =>
    _$_CharacterData(
      relatedTopics: (json['relatedTopics'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$_CharacterDataToJson(_$_CharacterData instance) =>
    <String, dynamic>{
      'relatedTopics': instance.relatedTopics,
    };

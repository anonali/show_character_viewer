// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freezed_repository_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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

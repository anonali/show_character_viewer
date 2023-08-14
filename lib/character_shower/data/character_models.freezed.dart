// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CharacterOffset _$CharacterOffsetFromJson(Map<String, dynamic> json) {
  return _CharacterOffset.fromJson(json);
}

/// @nodoc
mixin _$CharacterOffset {
  int get offset =>
      throw _privateConstructorUsedError; // The actual offset value.
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterOffsetCopyWith<CharacterOffset> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterOffsetCopyWith<$Res> {
  factory $CharacterOffsetCopyWith(
          CharacterOffset value, $Res Function(CharacterOffset) then) =
      _$CharacterOffsetCopyWithImpl<$Res, CharacterOffset>;
  @useResult
  $Res call({int offset, String text});
}

/// @nodoc
class _$CharacterOffsetCopyWithImpl<$Res, $Val extends CharacterOffset>
    implements $CharacterOffsetCopyWith<$Res> {
  _$CharacterOffsetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CharacterOffsetCopyWith<$Res>
    implements $CharacterOffsetCopyWith<$Res> {
  factory _$$_CharacterOffsetCopyWith(
          _$_CharacterOffset value, $Res Function(_$_CharacterOffset) then) =
      __$$_CharacterOffsetCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int offset, String text});
}

/// @nodoc
class __$$_CharacterOffsetCopyWithImpl<$Res>
    extends _$CharacterOffsetCopyWithImpl<$Res, _$_CharacterOffset>
    implements _$$_CharacterOffsetCopyWith<$Res> {
  __$$_CharacterOffsetCopyWithImpl(
      _$_CharacterOffset _value, $Res Function(_$_CharacterOffset) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? text = null,
  }) {
    return _then(_$_CharacterOffset(
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CharacterOffset implements _CharacterOffset {
  const _$_CharacterOffset({required this.offset, this.text = ''});

  factory _$_CharacterOffset.fromJson(Map<String, dynamic> json) =>
      _$$_CharacterOffsetFromJson(json);

  @override
  final int offset;
// The actual offset value.
  @override
  @JsonKey()
  final String text;

  @override
  String toString() {
    return 'CharacterOffset(offset: $offset, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharacterOffset &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, offset, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharacterOffsetCopyWith<_$_CharacterOffset> get copyWith =>
      __$$_CharacterOffsetCopyWithImpl<_$_CharacterOffset>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CharacterOffsetToJson(
      this,
    );
  }
}

abstract class _CharacterOffset implements CharacterOffset {
  const factory _CharacterOffset(
      {required final int offset, final String text}) = _$_CharacterOffset;

  factory _CharacterOffset.fromJson(Map<String, dynamic> json) =
      _$_CharacterOffset.fromJson;

  @override
  int get offset;
  @override // The actual offset value.
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_CharacterOffsetCopyWith<_$_CharacterOffset> get copyWith =>
      throw _privateConstructorUsedError;
}

CharactersListResponse _$CharactersListResponseFromJson(
    Map<String, dynamic> json) {
  return _CharactersListResponse.fromJson(json);
}

/// @nodoc
mixin _$CharactersListResponse {
  List<NewCharacter> get characters => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharactersListResponseCopyWith<CharactersListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersListResponseCopyWith<$Res> {
  factory $CharactersListResponseCopyWith(CharactersListResponse value,
          $Res Function(CharactersListResponse) then) =
      _$CharactersListResponseCopyWithImpl<$Res, CharactersListResponse>;
  @useResult
  $Res call({List<NewCharacter> characters, int totalCount});
}

/// @nodoc
class _$CharactersListResponseCopyWithImpl<$Res,
        $Val extends CharactersListResponse>
    implements $CharactersListResponseCopyWith<$Res> {
  _$CharactersListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
    Object? totalCount = null,
  }) {
    return _then(_value.copyWith(
      characters: null == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<NewCharacter>,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CharactersListResponseCopyWith<$Res>
    implements $CharactersListResponseCopyWith<$Res> {
  factory _$$_CharactersListResponseCopyWith(_$_CharactersListResponse value,
          $Res Function(_$_CharactersListResponse) then) =
      __$$_CharactersListResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NewCharacter> characters, int totalCount});
}

/// @nodoc
class __$$_CharactersListResponseCopyWithImpl<$Res>
    extends _$CharactersListResponseCopyWithImpl<$Res,
        _$_CharactersListResponse>
    implements _$$_CharactersListResponseCopyWith<$Res> {
  __$$_CharactersListResponseCopyWithImpl(_$_CharactersListResponse _value,
      $Res Function(_$_CharactersListResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
    Object? totalCount = null,
  }) {
    return _then(_$_CharactersListResponse(
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<NewCharacter>,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CharactersListResponse implements _CharactersListResponse {
  _$_CharactersListResponse(
      {required final List<NewCharacter> characters, required this.totalCount})
      : _characters = characters;

  factory _$_CharactersListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CharactersListResponseFromJson(json);

  final List<NewCharacter> _characters;
  @override
  List<NewCharacter> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  final int totalCount;

  @override
  String toString() {
    return 'CharactersListResponse(characters: $characters, totalCount: $totalCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharactersListResponse &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_characters), totalCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharactersListResponseCopyWith<_$_CharactersListResponse> get copyWith =>
      __$$_CharactersListResponseCopyWithImpl<_$_CharactersListResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CharactersListResponseToJson(
      this,
    );
  }
}

abstract class _CharactersListResponse implements CharactersListResponse {
  factory _CharactersListResponse(
      {required final List<NewCharacter> characters,
      required final int totalCount}) = _$_CharactersListResponse;

  factory _CharactersListResponse.fromJson(Map<String, dynamic> json) =
      _$_CharactersListResponse.fromJson;

  @override
  List<NewCharacter> get characters;
  @override
  int get totalCount;
  @override
  @JsonKey(ignore: true)
  _$$_CharactersListResponseCopyWith<_$_CharactersListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

NewCharacter _$NewCharacterFromJson(Map<String, dynamic> json) {
  return _NewCharacter.fromJson(json);
}

/// @nodoc
mixin _$NewCharacter {
  String get firstURL => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  Icon? get icon => throw _privateConstructorUsedError;
  String? get hash => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewCharacterCopyWith<NewCharacter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewCharacterCopyWith<$Res> {
  factory $NewCharacterCopyWith(
          NewCharacter value, $Res Function(NewCharacter) then) =
      _$NewCharacterCopyWithImpl<$Res, NewCharacter>;
  @useResult
  $Res call(
      {String firstURL,
      String text,
      String? name,
      String? description,
      String? imageUrl,
      Icon? icon,
      String? hash});

  $IconCopyWith<$Res>? get icon;
}

/// @nodoc
class _$NewCharacterCopyWithImpl<$Res, $Val extends NewCharacter>
    implements $NewCharacterCopyWith<$Res> {
  _$NewCharacterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstURL = null,
    Object? text = null,
    Object? name = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? icon = freezed,
    Object? hash = freezed,
  }) {
    return _then(_value.copyWith(
      firstURL: null == firstURL
          ? _value.firstURL
          : firstURL // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Icon?,
      hash: freezed == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IconCopyWith<$Res>? get icon {
    if (_value.icon == null) {
      return null;
    }

    return $IconCopyWith<$Res>(_value.icon!, (value) {
      return _then(_value.copyWith(icon: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NewCharacterCopyWith<$Res>
    implements $NewCharacterCopyWith<$Res> {
  factory _$$_NewCharacterCopyWith(
          _$_NewCharacter value, $Res Function(_$_NewCharacter) then) =
      __$$_NewCharacterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String firstURL,
      String text,
      String? name,
      String? description,
      String? imageUrl,
      Icon? icon,
      String? hash});

  @override
  $IconCopyWith<$Res>? get icon;
}

/// @nodoc
class __$$_NewCharacterCopyWithImpl<$Res>
    extends _$NewCharacterCopyWithImpl<$Res, _$_NewCharacter>
    implements _$$_NewCharacterCopyWith<$Res> {
  __$$_NewCharacterCopyWithImpl(
      _$_NewCharacter _value, $Res Function(_$_NewCharacter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstURL = null,
    Object? text = null,
    Object? name = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? icon = freezed,
    Object? hash = freezed,
  }) {
    return _then(_$_NewCharacter(
      firstURL: null == firstURL
          ? _value.firstURL
          : firstURL // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Icon?,
      hash: freezed == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewCharacter implements _NewCharacter {
  const _$_NewCharacter(
      {required this.firstURL,
      required this.text,
      this.name,
      this.description,
      this.imageUrl,
      this.icon,
      this.hash});

  factory _$_NewCharacter.fromJson(Map<String, dynamic> json) =>
      _$$_NewCharacterFromJson(json);

  @override
  final String firstURL;
  @override
  final String text;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? imageUrl;
  @override
  final Icon? icon;
  @override
  final String? hash;

  @override
  String toString() {
    return 'NewCharacter(firstURL: $firstURL, text: $text, name: $name, description: $description, imageUrl: $imageUrl, icon: $icon, hash: $hash)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewCharacter &&
            (identical(other.firstURL, firstURL) ||
                other.firstURL == firstURL) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.hash, hash) || other.hash == hash));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, firstURL, text, name, description, imageUrl, icon, hash);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewCharacterCopyWith<_$_NewCharacter> get copyWith =>
      __$$_NewCharacterCopyWithImpl<_$_NewCharacter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewCharacterToJson(
      this,
    );
  }
}

abstract class _NewCharacter implements NewCharacter {
  const factory _NewCharacter(
      {required final String firstURL,
      required final String text,
      final String? name,
      final String? description,
      final String? imageUrl,
      final Icon? icon,
      final String? hash}) = _$_NewCharacter;

  factory _NewCharacter.fromJson(Map<String, dynamic> json) =
      _$_NewCharacter.fromJson;

  @override
  String get firstURL;
  @override
  String get text;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get imageUrl;
  @override
  Icon? get icon;
  @override
  String? get hash;
  @override
  @JsonKey(ignore: true)
  _$$_NewCharacterCopyWith<_$_NewCharacter> get copyWith =>
      throw _privateConstructorUsedError;
}

Icon _$IconFromJson(Map<String, dynamic> json) {
  return _Icon.fromJson(json);
}

/// @nodoc
mixin _$Icon {
  @JsonKey(name: 'Height')
  String? get height => throw _privateConstructorUsedError;
  @JsonKey(name: 'URL')
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'Width')
  String? get width => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IconCopyWith<Icon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IconCopyWith<$Res> {
  factory $IconCopyWith(Icon value, $Res Function(Icon) then) =
      _$IconCopyWithImpl<$Res, Icon>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Height') String? height,
      @JsonKey(name: 'URL') String? url,
      @JsonKey(name: 'Width') String? width});
}

/// @nodoc
class _$IconCopyWithImpl<$Res, $Val extends Icon>
    implements $IconCopyWith<$Res> {
  _$IconCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = freezed,
    Object? url = freezed,
    Object? width = freezed,
  }) {
    return _then(_value.copyWith(
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IconCopyWith<$Res> implements $IconCopyWith<$Res> {
  factory _$$_IconCopyWith(_$_Icon value, $Res Function(_$_Icon) then) =
      __$$_IconCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Height') String? height,
      @JsonKey(name: 'URL') String? url,
      @JsonKey(name: 'Width') String? width});
}

/// @nodoc
class __$$_IconCopyWithImpl<$Res> extends _$IconCopyWithImpl<$Res, _$_Icon>
    implements _$$_IconCopyWith<$Res> {
  __$$_IconCopyWithImpl(_$_Icon _value, $Res Function(_$_Icon) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = freezed,
    Object? url = freezed,
    Object? width = freezed,
  }) {
    return _then(_$_Icon(
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Icon implements _Icon {
  _$_Icon(
      {@JsonKey(name: 'Height') this.height,
      @JsonKey(name: 'URL') this.url,
      @JsonKey(name: 'Width') this.width});

  factory _$_Icon.fromJson(Map<String, dynamic> json) => _$$_IconFromJson(json);

  @override
  @JsonKey(name: 'Height')
  final String? height;
  @override
  @JsonKey(name: 'URL')
  final String? url;
  @override
  @JsonKey(name: 'Width')
  final String? width;

  @override
  String toString() {
    return 'Icon(height: $height, url: $url, width: $width)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Icon &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.width, width) || other.width == width));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, height, url, width);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IconCopyWith<_$_Icon> get copyWith =>
      __$$_IconCopyWithImpl<_$_Icon>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IconToJson(
      this,
    );
  }
}

abstract class _Icon implements Icon {
  factory _Icon(
      {@JsonKey(name: 'Height') final String? height,
      @JsonKey(name: 'URL') final String? url,
      @JsonKey(name: 'Width') final String? width}) = _$_Icon;

  factory _Icon.fromJson(Map<String, dynamic> json) = _$_Icon.fromJson;

  @override
  @JsonKey(name: 'Height')
  String? get height;
  @override
  @JsonKey(name: 'URL')
  String? get url;
  @override
  @JsonKey(name: 'Width')
  String? get width;
  @override
  @JsonKey(ignore: true)
  _$$_IconCopyWith<_$_Icon> get copyWith => throw _privateConstructorUsedError;
}

CharacterResponse _$CharacterResponseFromJson(Map<String, dynamic> json) {
  return _CharacterResponse.fromJson(json);
}

/// @nodoc
mixin _$CharacterResponse {
  @JsonKey(name: 'RelatedTopics')
  List<RelatedTopic> get relatedTopics => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterResponseCopyWith<CharacterResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterResponseCopyWith<$Res> {
  factory $CharacterResponseCopyWith(
          CharacterResponse value, $Res Function(CharacterResponse) then) =
      _$CharacterResponseCopyWithImpl<$Res, CharacterResponse>;
  @useResult
  $Res call({@JsonKey(name: 'RelatedTopics') List<RelatedTopic> relatedTopics});
}

/// @nodoc
class _$CharacterResponseCopyWithImpl<$Res, $Val extends CharacterResponse>
    implements $CharacterResponseCopyWith<$Res> {
  _$CharacterResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? relatedTopics = null,
  }) {
    return _then(_value.copyWith(
      relatedTopics: null == relatedTopics
          ? _value.relatedTopics
          : relatedTopics // ignore: cast_nullable_to_non_nullable
              as List<RelatedTopic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CharacterResponseCopyWith<$Res>
    implements $CharacterResponseCopyWith<$Res> {
  factory _$$_CharacterResponseCopyWith(_$_CharacterResponse value,
          $Res Function(_$_CharacterResponse) then) =
      __$$_CharacterResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'RelatedTopics') List<RelatedTopic> relatedTopics});
}

/// @nodoc
class __$$_CharacterResponseCopyWithImpl<$Res>
    extends _$CharacterResponseCopyWithImpl<$Res, _$_CharacterResponse>
    implements _$$_CharacterResponseCopyWith<$Res> {
  __$$_CharacterResponseCopyWithImpl(
      _$_CharacterResponse _value, $Res Function(_$_CharacterResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? relatedTopics = null,
  }) {
    return _then(_$_CharacterResponse(
      relatedTopics: null == relatedTopics
          ? _value._relatedTopics
          : relatedTopics // ignore: cast_nullable_to_non_nullable
              as List<RelatedTopic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CharacterResponse implements _CharacterResponse {
  _$_CharacterResponse(
      {@JsonKey(name: 'RelatedTopics')
      required final List<RelatedTopic> relatedTopics})
      : _relatedTopics = relatedTopics;

  factory _$_CharacterResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CharacterResponseFromJson(json);

  final List<RelatedTopic> _relatedTopics;
  @override
  @JsonKey(name: 'RelatedTopics')
  List<RelatedTopic> get relatedTopics {
    if (_relatedTopics is EqualUnmodifiableListView) return _relatedTopics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relatedTopics);
  }

  @override
  String toString() {
    return 'CharacterResponse(relatedTopics: $relatedTopics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharacterResponse &&
            const DeepCollectionEquality()
                .equals(other._relatedTopics, _relatedTopics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_relatedTopics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharacterResponseCopyWith<_$_CharacterResponse> get copyWith =>
      __$$_CharacterResponseCopyWithImpl<_$_CharacterResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CharacterResponseToJson(
      this,
    );
  }
}

abstract class _CharacterResponse implements CharacterResponse {
  factory _CharacterResponse(
      {@JsonKey(name: 'RelatedTopics')
      required final List<RelatedTopic> relatedTopics}) = _$_CharacterResponse;

  factory _CharacterResponse.fromJson(Map<String, dynamic> json) =
      _$_CharacterResponse.fromJson;

  @override
  @JsonKey(name: 'RelatedTopics')
  List<RelatedTopic> get relatedTopics;
  @override
  @JsonKey(ignore: true)
  _$$_CharacterResponseCopyWith<_$_CharacterResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

RelatedTopic _$RelatedTopicFromJson(Map<String, dynamic> json) {
  return _RelatedTopic.fromJson(json);
}

/// @nodoc
mixin _$RelatedTopic {
  @JsonKey(name: 'FirstURL')
  String get firstURL => throw _privateConstructorUsedError;
  @JsonKey(name: 'Icon')
  Icon get icon => throw _privateConstructorUsedError;
  @JsonKey(name: 'Result')
  String get result => throw _privateConstructorUsedError;
  @JsonKey(name: 'Text')
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RelatedTopicCopyWith<RelatedTopic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelatedTopicCopyWith<$Res> {
  factory $RelatedTopicCopyWith(
          RelatedTopic value, $Res Function(RelatedTopic) then) =
      _$RelatedTopicCopyWithImpl<$Res, RelatedTopic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'FirstURL') String firstURL,
      @JsonKey(name: 'Icon') Icon icon,
      @JsonKey(name: 'Result') String result,
      @JsonKey(name: 'Text') String text});

  $IconCopyWith<$Res> get icon;
}

/// @nodoc
class _$RelatedTopicCopyWithImpl<$Res, $Val extends RelatedTopic>
    implements $RelatedTopicCopyWith<$Res> {
  _$RelatedTopicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstURL = null,
    Object? icon = null,
    Object? result = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      firstURL: null == firstURL
          ? _value.firstURL
          : firstURL // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Icon,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IconCopyWith<$Res> get icon {
    return $IconCopyWith<$Res>(_value.icon, (value) {
      return _then(_value.copyWith(icon: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RelatedTopicCopyWith<$Res>
    implements $RelatedTopicCopyWith<$Res> {
  factory _$$_RelatedTopicCopyWith(
          _$_RelatedTopic value, $Res Function(_$_RelatedTopic) then) =
      __$$_RelatedTopicCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'FirstURL') String firstURL,
      @JsonKey(name: 'Icon') Icon icon,
      @JsonKey(name: 'Result') String result,
      @JsonKey(name: 'Text') String text});

  @override
  $IconCopyWith<$Res> get icon;
}

/// @nodoc
class __$$_RelatedTopicCopyWithImpl<$Res>
    extends _$RelatedTopicCopyWithImpl<$Res, _$_RelatedTopic>
    implements _$$_RelatedTopicCopyWith<$Res> {
  __$$_RelatedTopicCopyWithImpl(
      _$_RelatedTopic _value, $Res Function(_$_RelatedTopic) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstURL = null,
    Object? icon = null,
    Object? result = null,
    Object? text = null,
  }) {
    return _then(_$_RelatedTopic(
      firstURL: null == firstURL
          ? _value.firstURL
          : firstURL // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Icon,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RelatedTopic implements _RelatedTopic {
  _$_RelatedTopic(
      {@JsonKey(name: 'FirstURL') required this.firstURL,
      @JsonKey(name: 'Icon') required this.icon,
      @JsonKey(name: 'Result') required this.result,
      @JsonKey(name: 'Text') required this.text});

  factory _$_RelatedTopic.fromJson(Map<String, dynamic> json) =>
      _$$_RelatedTopicFromJson(json);

  @override
  @JsonKey(name: 'FirstURL')
  final String firstURL;
  @override
  @JsonKey(name: 'Icon')
  final Icon icon;
  @override
  @JsonKey(name: 'Result')
  final String result;
  @override
  @JsonKey(name: 'Text')
  final String text;

  @override
  String toString() {
    return 'RelatedTopic(firstURL: $firstURL, icon: $icon, result: $result, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RelatedTopic &&
            (identical(other.firstURL, firstURL) ||
                other.firstURL == firstURL) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, firstURL, icon, result, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RelatedTopicCopyWith<_$_RelatedTopic> get copyWith =>
      __$$_RelatedTopicCopyWithImpl<_$_RelatedTopic>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RelatedTopicToJson(
      this,
    );
  }
}

abstract class _RelatedTopic implements RelatedTopic {
  factory _RelatedTopic(
      {@JsonKey(name: 'FirstURL') required final String firstURL,
      @JsonKey(name: 'Icon') required final Icon icon,
      @JsonKey(name: 'Result') required final String result,
      @JsonKey(name: 'Text') required final String text}) = _$_RelatedTopic;

  factory _RelatedTopic.fromJson(Map<String, dynamic> json) =
      _$_RelatedTopic.fromJson;

  @override
  @JsonKey(name: 'FirstURL')
  String get firstURL;
  @override
  @JsonKey(name: 'Icon')
  Icon get icon;
  @override
  @JsonKey(name: 'Result')
  String get result;
  @override
  @JsonKey(name: 'Text')
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_RelatedTopicCopyWith<_$_RelatedTopic> get copyWith =>
      throw _privateConstructorUsedError;
}

CharacterData _$CharacterDataFromJson(Map<String, dynamic> json) {
  return _CharacterData.fromJson(json);
}

/// @nodoc
mixin _$CharacterData {
  List<Map<String, Object?>> get relatedTopics =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterDataCopyWith<CharacterData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterDataCopyWith<$Res> {
  factory $CharacterDataCopyWith(
          CharacterData value, $Res Function(CharacterData) then) =
      _$CharacterDataCopyWithImpl<$Res, CharacterData>;
  @useResult
  $Res call({List<Map<String, Object?>> relatedTopics});
}

/// @nodoc
class _$CharacterDataCopyWithImpl<$Res, $Val extends CharacterData>
    implements $CharacterDataCopyWith<$Res> {
  _$CharacterDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? relatedTopics = null,
  }) {
    return _then(_value.copyWith(
      relatedTopics: null == relatedTopics
          ? _value.relatedTopics
          : relatedTopics // ignore: cast_nullable_to_non_nullable
              as List<Map<String, Object?>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CharacterDataCopyWith<$Res>
    implements $CharacterDataCopyWith<$Res> {
  factory _$$_CharacterDataCopyWith(
          _$_CharacterData value, $Res Function(_$_CharacterData) then) =
      __$$_CharacterDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Map<String, Object?>> relatedTopics});
}

/// @nodoc
class __$$_CharacterDataCopyWithImpl<$Res>
    extends _$CharacterDataCopyWithImpl<$Res, _$_CharacterData>
    implements _$$_CharacterDataCopyWith<$Res> {
  __$$_CharacterDataCopyWithImpl(
      _$_CharacterData _value, $Res Function(_$_CharacterData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? relatedTopics = null,
  }) {
    return _then(_$_CharacterData(
      relatedTopics: null == relatedTopics
          ? _value._relatedTopics
          : relatedTopics // ignore: cast_nullable_to_non_nullable
              as List<Map<String, Object?>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CharacterData extends _CharacterData {
  _$_CharacterData({required final List<Map<String, Object?>> relatedTopics})
      : _relatedTopics = relatedTopics,
        super._();

  factory _$_CharacterData.fromJson(Map<String, dynamic> json) =>
      _$$_CharacterDataFromJson(json);

  final List<Map<String, Object?>> _relatedTopics;
  @override
  List<Map<String, Object?>> get relatedTopics {
    if (_relatedTopics is EqualUnmodifiableListView) return _relatedTopics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relatedTopics);
  }

  @override
  String toString() {
    return 'CharacterData(relatedTopics: $relatedTopics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharacterData &&
            const DeepCollectionEquality()
                .equals(other._relatedTopics, _relatedTopics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_relatedTopics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharacterDataCopyWith<_$_CharacterData> get copyWith =>
      __$$_CharacterDataCopyWithImpl<_$_CharacterData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CharacterDataToJson(
      this,
    );
  }
}

abstract class _CharacterData extends CharacterData {
  factory _CharacterData(
          {required final List<Map<String, Object?>> relatedTopics}) =
      _$_CharacterData;
  _CharacterData._() : super._();

  factory _CharacterData.fromJson(Map<String, dynamic> json) =
      _$_CharacterData.fromJson;

  @override
  List<Map<String, Object?>> get relatedTopics;
  @override
  @JsonKey(ignore: true)
  _$$_CharacterDataCopyWith<_$_CharacterData> get copyWith =>
      throw _privateConstructorUsedError;
}

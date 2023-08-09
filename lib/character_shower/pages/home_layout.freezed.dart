// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_layout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CharacterIndex {
  int get index => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterIndexCopyWith<CharacterIndex> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterIndexCopyWith<$Res> {
  factory $CharacterIndexCopyWith(
          CharacterIndex value, $Res Function(CharacterIndex) then) =
      _$CharacterIndexCopyWithImpl<$Res, CharacterIndex>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$CharacterIndexCopyWithImpl<$Res, $Val extends CharacterIndex>
    implements $CharacterIndexCopyWith<$Res> {
  _$CharacterIndexCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CharacterIndexCopyWith<$Res>
    implements $CharacterIndexCopyWith<$Res> {
  factory _$$_CharacterIndexCopyWith(
          _$_CharacterIndex value, $Res Function(_$_CharacterIndex) then) =
      __$$_CharacterIndexCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_CharacterIndexCopyWithImpl<$Res>
    extends _$CharacterIndexCopyWithImpl<$Res, _$_CharacterIndex>
    implements _$$_CharacterIndexCopyWith<$Res> {
  __$$_CharacterIndexCopyWithImpl(
      _$_CharacterIndex _value, $Res Function(_$_CharacterIndex) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_CharacterIndex(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CharacterIndex implements _CharacterIndex {
  _$_CharacterIndex({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'CharacterIndex(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharacterIndex &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharacterIndexCopyWith<_$_CharacterIndex> get copyWith =>
      __$$_CharacterIndexCopyWithImpl<_$_CharacterIndex>(this, _$identity);
}

abstract class _CharacterIndex implements CharacterIndex {
  factory _CharacterIndex({required final int index}) = _$_CharacterIndex;

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$_CharacterIndexCopyWith<_$_CharacterIndex> get copyWith =>
      throw _privateConstructorUsedError;
}

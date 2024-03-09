// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Exception _$ExceptionFromJson(Map<String, dynamic> json) {
  return _Exception.fromJson(json);
}

/// @nodoc
mixin _$Exception {
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExceptionCopyWith<Exception> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExceptionCopyWith<$Res> {
  factory $ExceptionCopyWith(Exception value, $Res Function(Exception) then) =
      _$ExceptionCopyWithImpl<$Res, Exception>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$ExceptionCopyWithImpl<$Res, $Val extends Exception>
    implements $ExceptionCopyWith<$Res> {
  _$ExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExceptionImplCopyWith<$Res>
    implements $ExceptionCopyWith<$Res> {
  factory _$$ExceptionImplCopyWith(
          _$ExceptionImpl value, $Res Function(_$ExceptionImpl) then) =
      __$$ExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ExceptionImplCopyWithImpl<$Res>
    extends _$ExceptionCopyWithImpl<$Res, _$ExceptionImpl>
    implements _$$ExceptionImplCopyWith<$Res> {
  __$$ExceptionImplCopyWithImpl(
      _$ExceptionImpl _value, $Res Function(_$ExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ExceptionImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExceptionImpl implements _Exception {
  const _$ExceptionImpl({required this.message});

  factory _$ExceptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExceptionImplFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'Exception(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExceptionImplCopyWith<_$ExceptionImpl> get copyWith =>
      __$$ExceptionImplCopyWithImpl<_$ExceptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExceptionImplToJson(
      this,
    );
  }
}

abstract class _Exception implements Exception {
  const factory _Exception({required final String message}) = _$ExceptionImpl;

  factory _Exception.fromJson(Map<String, dynamic> json) =
      _$ExceptionImpl.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ExceptionImplCopyWith<_$ExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

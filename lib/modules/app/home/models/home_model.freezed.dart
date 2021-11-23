// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeModelResponse _$HomeModelResponseFromJson(Map<String, dynamic> json) {
  return _HomeModelResponse.fromJson(json);
}

/// @nodoc
class _$HomeModelResponseTearOff {
  const _$HomeModelResponseTearOff();

  _HomeModelResponse call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'user') UserModel? user}) {
    return _HomeModelResponse(
      code: code,
      message: message,
      user: user,
    );
  }

  HomeModelResponse fromJson(Map<String, Object?> json) {
    return HomeModelResponse.fromJson(json);
  }
}

/// @nodoc
const $HomeModelResponse = _$HomeModelResponseTearOff();

/// @nodoc
mixin _$HomeModelResponse {
  @JsonKey(name: 'code')
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  UserModel? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeModelResponseCopyWith<HomeModelResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelResponseCopyWith<$Res> {
  factory $HomeModelResponseCopyWith(
          HomeModelResponse value, $Res Function(HomeModelResponse) then) =
      _$HomeModelResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'user') UserModel? user});

  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$HomeModelResponseCopyWithImpl<$Res>
    implements $HomeModelResponseCopyWith<$Res> {
  _$HomeModelResponseCopyWithImpl(this._value, this._then);

  final HomeModelResponse _value;
  // ignore: unused_field
  final $Res Function(HomeModelResponse) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }

  @override
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$HomeModelResponseCopyWith<$Res>
    implements $HomeModelResponseCopyWith<$Res> {
  factory _$HomeModelResponseCopyWith(
          _HomeModelResponse value, $Res Function(_HomeModelResponse) then) =
      __$HomeModelResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'user') UserModel? user});

  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$HomeModelResponseCopyWithImpl<$Res>
    extends _$HomeModelResponseCopyWithImpl<$Res>
    implements _$HomeModelResponseCopyWith<$Res> {
  __$HomeModelResponseCopyWithImpl(
      _HomeModelResponse _value, $Res Function(_HomeModelResponse) _then)
      : super(_value, (v) => _then(v as _HomeModelResponse));

  @override
  _HomeModelResponse get _value => super._value as _HomeModelResponse;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? user = freezed,
  }) {
    return _then(_HomeModelResponse(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: true)
class _$_HomeModelResponse implements _HomeModelResponse {
  const _$_HomeModelResponse(
      {@JsonKey(name: 'code') this.code,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'user') this.user});

  factory _$_HomeModelResponse.fromJson(Map<String, dynamic> json) =>
      _$$_HomeModelResponseFromJson(json);

  @override
  @JsonKey(name: 'code')
  final int? code;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'user')
  final UserModel? user;

  @override
  String toString() {
    return 'HomeModelResponse(code: $code, message: $message, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeModelResponse &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message, user);

  @JsonKey(ignore: true)
  @override
  _$HomeModelResponseCopyWith<_HomeModelResponse> get copyWith =>
      __$HomeModelResponseCopyWithImpl<_HomeModelResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeModelResponseToJson(this);
  }
}

abstract class _HomeModelResponse implements HomeModelResponse {
  const factory _HomeModelResponse(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'user') UserModel? user}) = _$_HomeModelResponse;

  factory _HomeModelResponse.fromJson(Map<String, dynamic> json) =
      _$_HomeModelResponse.fromJson;

  @override
  @JsonKey(name: 'code')
  int? get code;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'user')
  UserModel? get user;
  @override
  @JsonKey(ignore: true)
  _$HomeModelResponseCopyWith<_HomeModelResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

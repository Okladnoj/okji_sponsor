// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'person_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PersonModelResponse _$PersonModelResponseFromJson(Map<String, dynamic> json) {
  return _PersonModelResponse.fromJson(json);
}

/// @nodoc
class _$PersonModelResponseTearOff {
  const _$PersonModelResponseTearOff();

  _PersonModelResponse call({@JsonKey(name: 'user') UserModel? user}) {
    return _PersonModelResponse(
      user: user,
    );
  }

  PersonModelResponse fromJson(Map<String, Object?> json) {
    return PersonModelResponse.fromJson(json);
  }
}

/// @nodoc
const $PersonModelResponse = _$PersonModelResponseTearOff();

/// @nodoc
mixin _$PersonModelResponse {
  @JsonKey(name: 'user')
  UserModel? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonModelResponseCopyWith<PersonModelResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonModelResponseCopyWith<$Res> {
  factory $PersonModelResponseCopyWith(
          PersonModelResponse value, $Res Function(PersonModelResponse) then) =
      _$PersonModelResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'user') UserModel? user});

  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$PersonModelResponseCopyWithImpl<$Res>
    implements $PersonModelResponseCopyWith<$Res> {
  _$PersonModelResponseCopyWithImpl(this._value, this._then);

  final PersonModelResponse _value;
  // ignore: unused_field
  final $Res Function(PersonModelResponse) _then;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$PersonModelResponseCopyWith<$Res>
    implements $PersonModelResponseCopyWith<$Res> {
  factory _$PersonModelResponseCopyWith(_PersonModelResponse value,
          $Res Function(_PersonModelResponse) then) =
      __$PersonModelResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'user') UserModel? user});

  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$PersonModelResponseCopyWithImpl<$Res>
    extends _$PersonModelResponseCopyWithImpl<$Res>
    implements _$PersonModelResponseCopyWith<$Res> {
  __$PersonModelResponseCopyWithImpl(
      _PersonModelResponse _value, $Res Function(_PersonModelResponse) _then)
      : super(_value, (v) => _then(v as _PersonModelResponse));

  @override
  _PersonModelResponse get _value => super._value as _PersonModelResponse;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_PersonModelResponse(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: true)
class _$_PersonModelResponse implements _PersonModelResponse {
  const _$_PersonModelResponse({@JsonKey(name: 'user') this.user});

  factory _$_PersonModelResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PersonModelResponseFromJson(json);

  @override
  @JsonKey(name: 'user')
  final UserModel? user;

  @override
  String toString() {
    return 'PersonModelResponse(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PersonModelResponse &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$PersonModelResponseCopyWith<_PersonModelResponse> get copyWith =>
      __$PersonModelResponseCopyWithImpl<_PersonModelResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersonModelResponseToJson(this);
  }
}

abstract class _PersonModelResponse implements PersonModelResponse {
  const factory _PersonModelResponse({@JsonKey(name: 'user') UserModel? user}) =
      _$_PersonModelResponse;

  factory _PersonModelResponse.fromJson(Map<String, dynamic> json) =
      _$_PersonModelResponse.fromJson;

  @override
  @JsonKey(name: 'user')
  UserModel? get user;
  @override
  @JsonKey(ignore: true)
  _$PersonModelResponseCopyWith<_PersonModelResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

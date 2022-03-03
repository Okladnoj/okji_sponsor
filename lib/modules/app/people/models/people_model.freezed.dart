// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'people_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PeopleModelResponse _$PeopleModelResponseFromJson(Map<String, dynamic> json) {
  return _PeopleModelResponse.fromJson(json);
}

/// @nodoc
class _$PeopleModelResponseTearOff {
  const _$PeopleModelResponseTearOff();

  _PeopleModelResponse call(
      {@JsonKey(name: 'allUsers') List<UserModel>? allUsers,
      @JsonKey(name: 'friendUsers') List<UserModel>? friendUsers,
      @JsonKey(name: 'subscribeUsers') List<UserModel>? subscribeUsers,
      @JsonKey(name: 'peopleType') PeopleType? type}) {
    return _PeopleModelResponse(
      allUsers: allUsers,
      friendUsers: friendUsers,
      subscribeUsers: subscribeUsers,
      type: type,
    );
  }

  PeopleModelResponse fromJson(Map<String, Object?> json) {
    return PeopleModelResponse.fromJson(json);
  }
}

/// @nodoc
const $PeopleModelResponse = _$PeopleModelResponseTearOff();

/// @nodoc
mixin _$PeopleModelResponse {
  @JsonKey(name: 'allUsers')
  List<UserModel>? get allUsers => throw _privateConstructorUsedError;
  @JsonKey(name: 'friendUsers')
  List<UserModel>? get friendUsers => throw _privateConstructorUsedError;
  @JsonKey(name: 'subscribeUsers')
  List<UserModel>? get subscribeUsers => throw _privateConstructorUsedError;
  @JsonKey(name: 'peopleType')
  PeopleType? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PeopleModelResponseCopyWith<PeopleModelResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeopleModelResponseCopyWith<$Res> {
  factory $PeopleModelResponseCopyWith(
          PeopleModelResponse value, $Res Function(PeopleModelResponse) then) =
      _$PeopleModelResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'allUsers') List<UserModel>? allUsers,
      @JsonKey(name: 'friendUsers') List<UserModel>? friendUsers,
      @JsonKey(name: 'subscribeUsers') List<UserModel>? subscribeUsers,
      @JsonKey(name: 'peopleType') PeopleType? type});
}

/// @nodoc
class _$PeopleModelResponseCopyWithImpl<$Res>
    implements $PeopleModelResponseCopyWith<$Res> {
  _$PeopleModelResponseCopyWithImpl(this._value, this._then);

  final PeopleModelResponse _value;
  // ignore: unused_field
  final $Res Function(PeopleModelResponse) _then;

  @override
  $Res call({
    Object? allUsers = freezed,
    Object? friendUsers = freezed,
    Object? subscribeUsers = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      allUsers: allUsers == freezed
          ? _value.allUsers
          : allUsers // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
      friendUsers: friendUsers == freezed
          ? _value.friendUsers
          : friendUsers // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
      subscribeUsers: subscribeUsers == freezed
          ? _value.subscribeUsers
          : subscribeUsers // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PeopleType?,
    ));
  }
}

/// @nodoc
abstract class _$PeopleModelResponseCopyWith<$Res>
    implements $PeopleModelResponseCopyWith<$Res> {
  factory _$PeopleModelResponseCopyWith(_PeopleModelResponse value,
          $Res Function(_PeopleModelResponse) then) =
      __$PeopleModelResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'allUsers') List<UserModel>? allUsers,
      @JsonKey(name: 'friendUsers') List<UserModel>? friendUsers,
      @JsonKey(name: 'subscribeUsers') List<UserModel>? subscribeUsers,
      @JsonKey(name: 'peopleType') PeopleType? type});
}

/// @nodoc
class __$PeopleModelResponseCopyWithImpl<$Res>
    extends _$PeopleModelResponseCopyWithImpl<$Res>
    implements _$PeopleModelResponseCopyWith<$Res> {
  __$PeopleModelResponseCopyWithImpl(
      _PeopleModelResponse _value, $Res Function(_PeopleModelResponse) _then)
      : super(_value, (v) => _then(v as _PeopleModelResponse));

  @override
  _PeopleModelResponse get _value => super._value as _PeopleModelResponse;

  @override
  $Res call({
    Object? allUsers = freezed,
    Object? friendUsers = freezed,
    Object? subscribeUsers = freezed,
    Object? type = freezed,
  }) {
    return _then(_PeopleModelResponse(
      allUsers: allUsers == freezed
          ? _value.allUsers
          : allUsers // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
      friendUsers: friendUsers == freezed
          ? _value.friendUsers
          : friendUsers // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
      subscribeUsers: subscribeUsers == freezed
          ? _value.subscribeUsers
          : subscribeUsers // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PeopleType?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: true)
class _$_PeopleModelResponse implements _PeopleModelResponse {
  const _$_PeopleModelResponse(
      {@JsonKey(name: 'allUsers') this.allUsers,
      @JsonKey(name: 'friendUsers') this.friendUsers,
      @JsonKey(name: 'subscribeUsers') this.subscribeUsers,
      @JsonKey(name: 'peopleType') this.type});

  factory _$_PeopleModelResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PeopleModelResponseFromJson(json);

  @override
  @JsonKey(name: 'allUsers')
  final List<UserModel>? allUsers;
  @override
  @JsonKey(name: 'friendUsers')
  final List<UserModel>? friendUsers;
  @override
  @JsonKey(name: 'subscribeUsers')
  final List<UserModel>? subscribeUsers;
  @override
  @JsonKey(name: 'peopleType')
  final PeopleType? type;

  @override
  String toString() {
    return 'PeopleModelResponse(allUsers: $allUsers, friendUsers: $friendUsers, subscribeUsers: $subscribeUsers, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PeopleModelResponse &&
            const DeepCollectionEquality().equals(other.allUsers, allUsers) &&
            const DeepCollectionEquality()
                .equals(other.friendUsers, friendUsers) &&
            const DeepCollectionEquality()
                .equals(other.subscribeUsers, subscribeUsers) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(allUsers),
      const DeepCollectionEquality().hash(friendUsers),
      const DeepCollectionEquality().hash(subscribeUsers),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$PeopleModelResponseCopyWith<_PeopleModelResponse> get copyWith =>
      __$PeopleModelResponseCopyWithImpl<_PeopleModelResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PeopleModelResponseToJson(this);
  }
}

abstract class _PeopleModelResponse implements PeopleModelResponse {
  const factory _PeopleModelResponse(
      {@JsonKey(name: 'allUsers') List<UserModel>? allUsers,
      @JsonKey(name: 'friendUsers') List<UserModel>? friendUsers,
      @JsonKey(name: 'subscribeUsers') List<UserModel>? subscribeUsers,
      @JsonKey(name: 'peopleType') PeopleType? type}) = _$_PeopleModelResponse;

  factory _PeopleModelResponse.fromJson(Map<String, dynamic> json) =
      _$_PeopleModelResponse.fromJson;

  @override
  @JsonKey(name: 'allUsers')
  List<UserModel>? get allUsers;
  @override
  @JsonKey(name: 'friendUsers')
  List<UserModel>? get friendUsers;
  @override
  @JsonKey(name: 'subscribeUsers')
  List<UserModel>? get subscribeUsers;
  @override
  @JsonKey(name: 'peopleType')
  PeopleType? get type;
  @override
  @JsonKey(ignore: true)
  _$PeopleModelResponseCopyWith<_PeopleModelResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

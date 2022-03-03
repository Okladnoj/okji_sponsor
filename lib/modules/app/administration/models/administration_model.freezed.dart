// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'administration_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdministrationModelResponse _$AdministrationModelResponseFromJson(
    Map<String, dynamic> json) {
  return _AdministrationModelResponse.fromJson(json);
}

/// @nodoc
class _$AdministrationModelResponseTearOff {
  const _$AdministrationModelResponseTearOff();

  _AdministrationModelResponse call(
      {@JsonKey(name: 'blackUsers') List<UserModel>? blackUsers,
      @JsonKey(name: 'friendUsers') List<UserModel>? friendUsers,
      @JsonKey(name: 'subscribeUsers') List<UserModel>? subscribeUsers,
      @JsonKey(name: 'statusType') StatusType? type}) {
    return _AdministrationModelResponse(
      blackUsers: blackUsers,
      friendUsers: friendUsers,
      subscribeUsers: subscribeUsers,
      type: type,
    );
  }

  AdministrationModelResponse fromJson(Map<String, Object?> json) {
    return AdministrationModelResponse.fromJson(json);
  }
}

/// @nodoc
const $AdministrationModelResponse = _$AdministrationModelResponseTearOff();

/// @nodoc
mixin _$AdministrationModelResponse {
  @JsonKey(name: 'blackUsers')
  List<UserModel>? get blackUsers => throw _privateConstructorUsedError;
  @JsonKey(name: 'friendUsers')
  List<UserModel>? get friendUsers => throw _privateConstructorUsedError;
  @JsonKey(name: 'subscribeUsers')
  List<UserModel>? get subscribeUsers => throw _privateConstructorUsedError;
  @JsonKey(name: 'statusType')
  StatusType? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdministrationModelResponseCopyWith<AdministrationModelResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdministrationModelResponseCopyWith<$Res> {
  factory $AdministrationModelResponseCopyWith(
          AdministrationModelResponse value,
          $Res Function(AdministrationModelResponse) then) =
      _$AdministrationModelResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'blackUsers') List<UserModel>? blackUsers,
      @JsonKey(name: 'friendUsers') List<UserModel>? friendUsers,
      @JsonKey(name: 'subscribeUsers') List<UserModel>? subscribeUsers,
      @JsonKey(name: 'statusType') StatusType? type});
}

/// @nodoc
class _$AdministrationModelResponseCopyWithImpl<$Res>
    implements $AdministrationModelResponseCopyWith<$Res> {
  _$AdministrationModelResponseCopyWithImpl(this._value, this._then);

  final AdministrationModelResponse _value;
  // ignore: unused_field
  final $Res Function(AdministrationModelResponse) _then;

  @override
  $Res call({
    Object? blackUsers = freezed,
    Object? friendUsers = freezed,
    Object? subscribeUsers = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      blackUsers: blackUsers == freezed
          ? _value.blackUsers
          : blackUsers // ignore: cast_nullable_to_non_nullable
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
              as StatusType?,
    ));
  }
}

/// @nodoc
abstract class _$AdministrationModelResponseCopyWith<$Res>
    implements $AdministrationModelResponseCopyWith<$Res> {
  factory _$AdministrationModelResponseCopyWith(
          _AdministrationModelResponse value,
          $Res Function(_AdministrationModelResponse) then) =
      __$AdministrationModelResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'blackUsers') List<UserModel>? blackUsers,
      @JsonKey(name: 'friendUsers') List<UserModel>? friendUsers,
      @JsonKey(name: 'subscribeUsers') List<UserModel>? subscribeUsers,
      @JsonKey(name: 'statusType') StatusType? type});
}

/// @nodoc
class __$AdministrationModelResponseCopyWithImpl<$Res>
    extends _$AdministrationModelResponseCopyWithImpl<$Res>
    implements _$AdministrationModelResponseCopyWith<$Res> {
  __$AdministrationModelResponseCopyWithImpl(
      _AdministrationModelResponse _value,
      $Res Function(_AdministrationModelResponse) _then)
      : super(_value, (v) => _then(v as _AdministrationModelResponse));

  @override
  _AdministrationModelResponse get _value =>
      super._value as _AdministrationModelResponse;

  @override
  $Res call({
    Object? blackUsers = freezed,
    Object? friendUsers = freezed,
    Object? subscribeUsers = freezed,
    Object? type = freezed,
  }) {
    return _then(_AdministrationModelResponse(
      blackUsers: blackUsers == freezed
          ? _value.blackUsers
          : blackUsers // ignore: cast_nullable_to_non_nullable
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
              as StatusType?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: true)
class _$_AdministrationModelResponse implements _AdministrationModelResponse {
  const _$_AdministrationModelResponse(
      {@JsonKey(name: 'blackUsers') this.blackUsers,
      @JsonKey(name: 'friendUsers') this.friendUsers,
      @JsonKey(name: 'subscribeUsers') this.subscribeUsers,
      @JsonKey(name: 'statusType') this.type});

  factory _$_AdministrationModelResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AdministrationModelResponseFromJson(json);

  @override
  @JsonKey(name: 'blackUsers')
  final List<UserModel>? blackUsers;
  @override
  @JsonKey(name: 'friendUsers')
  final List<UserModel>? friendUsers;
  @override
  @JsonKey(name: 'subscribeUsers')
  final List<UserModel>? subscribeUsers;
  @override
  @JsonKey(name: 'statusType')
  final StatusType? type;

  @override
  String toString() {
    return 'AdministrationModelResponse(blackUsers: $blackUsers, friendUsers: $friendUsers, subscribeUsers: $subscribeUsers, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdministrationModelResponse &&
            const DeepCollectionEquality()
                .equals(other.blackUsers, blackUsers) &&
            const DeepCollectionEquality()
                .equals(other.friendUsers, friendUsers) &&
            const DeepCollectionEquality()
                .equals(other.subscribeUsers, subscribeUsers) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(blackUsers),
      const DeepCollectionEquality().hash(friendUsers),
      const DeepCollectionEquality().hash(subscribeUsers),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$AdministrationModelResponseCopyWith<_AdministrationModelResponse>
      get copyWith => __$AdministrationModelResponseCopyWithImpl<
          _AdministrationModelResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdministrationModelResponseToJson(this);
  }
}

abstract class _AdministrationModelResponse
    implements AdministrationModelResponse {
  const factory _AdministrationModelResponse(
          {@JsonKey(name: 'blackUsers') List<UserModel>? blackUsers,
          @JsonKey(name: 'friendUsers') List<UserModel>? friendUsers,
          @JsonKey(name: 'subscribeUsers') List<UserModel>? subscribeUsers,
          @JsonKey(name: 'statusType') StatusType? type}) =
      _$_AdministrationModelResponse;

  factory _AdministrationModelResponse.fromJson(Map<String, dynamic> json) =
      _$_AdministrationModelResponse.fromJson;

  @override
  @JsonKey(name: 'blackUsers')
  List<UserModel>? get blackUsers;
  @override
  @JsonKey(name: 'friendUsers')
  List<UserModel>? get friendUsers;
  @override
  @JsonKey(name: 'subscribeUsers')
  List<UserModel>? get subscribeUsers;
  @override
  @JsonKey(name: 'statusType')
  StatusType? get type;
  @override
  @JsonKey(ignore: true)
  _$AdministrationModelResponseCopyWith<_AdministrationModelResponse>
      get copyWith => throw _privateConstructorUsedError;
}

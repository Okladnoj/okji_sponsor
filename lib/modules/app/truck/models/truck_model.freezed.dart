// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'truck_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TruckModelResponse _$TruckModelResponseFromJson(Map<String, dynamic> json) {
  return _TruckModelResponse.fromJson(json);
}

/// @nodoc
class _$TruckModelResponseTearOff {
  const _$TruckModelResponseTearOff();

  _TruckModelResponse call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<SessionModel?>? listSession}) {
    return _TruckModelResponse(
      code: code,
      message: message,
      listSession: listSession,
    );
  }

  TruckModelResponse fromJson(Map<String, Object> json) {
    return TruckModelResponse.fromJson(json);
  }
}

/// @nodoc
const $TruckModelResponse = _$TruckModelResponseTearOff();

/// @nodoc
mixin _$TruckModelResponse {
  @JsonKey(name: 'code')
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<SessionModel?>? get listSession => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TruckModelResponseCopyWith<TruckModelResponse> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TruckModelResponseCopyWith<$Res> {
  factory $TruckModelResponseCopyWith(TruckModelResponse value, $Res Function(TruckModelResponse) then) =
      _$TruckModelResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<SessionModel?>? listSession});
}

/// @nodoc
class _$TruckModelResponseCopyWithImpl<$Res> implements $TruckModelResponseCopyWith<$Res> {
  _$TruckModelResponseCopyWithImpl(this._value, this._then);

  final TruckModelResponse _value;
  // ignore: unused_field
  final $Res Function(TruckModelResponse) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? listSession = freezed,
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
      listSession: listSession == freezed
          ? _value.listSession
          : listSession // ignore: cast_nullable_to_non_nullable
              as List<SessionModel?>?,
    ));
  }
}

/// @nodoc
abstract class _$TruckModelResponseCopyWith<$Res> implements $TruckModelResponseCopyWith<$Res> {
  factory _$TruckModelResponseCopyWith(_TruckModelResponse value, $Res Function(_TruckModelResponse) then) =
      __$TruckModelResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<SessionModel?>? listSession});
}

/// @nodoc
class __$TruckModelResponseCopyWithImpl<$Res> extends _$TruckModelResponseCopyWithImpl<$Res>
    implements _$TruckModelResponseCopyWith<$Res> {
  __$TruckModelResponseCopyWithImpl(_TruckModelResponse _value, $Res Function(_TruckModelResponse) _then)
      : super(_value, (v) => _then(v as _TruckModelResponse));

  @override
  _TruckModelResponse get _value => super._value as _TruckModelResponse;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? listSession = freezed,
  }) {
    return _then(_TruckModelResponse(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      listSession: listSession == freezed
          ? _value.listSession
          : listSession // ignore: cast_nullable_to_non_nullable
              as List<SessionModel?>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: true)
class _$_TruckModelResponse implements _TruckModelResponse {
  const _$_TruckModelResponse(
      {@JsonKey(name: 'code') this.code,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') this.listSession});

  factory _$_TruckModelResponse.fromJson(Map<String, dynamic> json) => _$_$_TruckModelResponseFromJson(json);

  @override
  @JsonKey(name: 'code')
  final int? code;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final List<SessionModel?>? listSession;

  @override
  String toString() {
    return 'TruckModelResponse(code: $code, message: $message, listSession: $listSession)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TruckModelResponse &&
            (identical(other.code, code) || const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) || const DeepCollectionEquality().equals(other.message, message)) &&
            (identical(other.listSession, listSession) ||
                const DeepCollectionEquality().equals(other.listSession, listSession)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(listSession);

  @JsonKey(ignore: true)
  @override
  _$TruckModelResponseCopyWith<_TruckModelResponse> get copyWith =>
      __$TruckModelResponseCopyWithImpl<_TruckModelResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TruckModelResponseToJson(this);
  }
}

abstract class _TruckModelResponse implements TruckModelResponse {
  const factory _TruckModelResponse(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<SessionModel?>? listSession}) = _$_TruckModelResponse;

  factory _TruckModelResponse.fromJson(Map<String, dynamic> json) = _$_TruckModelResponse.fromJson;

  @override
  @JsonKey(name: 'code')
  int? get code => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'data')
  List<SessionModel?>? get listSession => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TruckModelResponseCopyWith<_TruckModelResponse> get copyWith => throw _privateConstructorUsedError;
}

SessionModel _$SessionModelFromJson(Map<String, dynamic> json) {
  return _SessionModel.fromJson(json);
}

/// @nodoc
class _$SessionModelTearOff {
  const _$SessionModelTearOff();

  _SessionModel call(
      {@JsonKey(name: 'uuid') String? uuid,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'users') List<UserModel?>? users,
      @JsonKey(name: 'protected') bool? protected,
      @JsonKey(name: 'created_at', fromJson: JsonParser.stringToDateTime) DateTime? createdAt,
      @JsonKey(name: 'expired_at', fromJson: JsonParser.stringToDateTime) DateTime? expiredAt,
      @JsonKey(name: 'pinCode') String? pinCode}) {
    return _SessionModel(
      uuid: uuid,
      name: name,
      status: status,
      users: users,
      protected: protected,
      createdAt: createdAt,
      expiredAt: expiredAt,
      pinCode: pinCode,
    );
  }

  SessionModel fromJson(Map<String, Object> json) {
    return SessionModel.fromJson(json);
  }
}

/// @nodoc
const $SessionModel = _$SessionModelTearOff();

/// @nodoc
mixin _$SessionModel {
  @JsonKey(name: 'uuid')
  String? get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'users')
  List<UserModel?>? get users => throw _privateConstructorUsedError;
  @JsonKey(name: 'protected')
  bool? get protected => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at', fromJson: JsonParser.stringToDateTime)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'expired_at', fromJson: JsonParser.stringToDateTime)
  DateTime? get expiredAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'pinCode')
  String? get pinCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionModelCopyWith<SessionModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionModelCopyWith<$Res> {
  factory $SessionModelCopyWith(SessionModel value, $Res Function(SessionModel) then) =
      _$SessionModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'uuid') String? uuid,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'users') List<UserModel?>? users,
      @JsonKey(name: 'protected') bool? protected,
      @JsonKey(name: 'created_at', fromJson: JsonParser.stringToDateTime) DateTime? createdAt,
      @JsonKey(name: 'expired_at', fromJson: JsonParser.stringToDateTime) DateTime? expiredAt,
      @JsonKey(name: 'pinCode') String? pinCode});
}

/// @nodoc
class _$SessionModelCopyWithImpl<$Res> implements $SessionModelCopyWith<$Res> {
  _$SessionModelCopyWithImpl(this._value, this._then);

  final SessionModel _value;
  // ignore: unused_field
  final $Res Function(SessionModel) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? users = freezed,
    Object? protected = freezed,
    Object? createdAt = freezed,
    Object? expiredAt = freezed,
    Object? pinCode = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserModel?>?,
      protected: protected == freezed
          ? _value.protected
          : protected // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiredAt: expiredAt == freezed
          ? _value.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pinCode: pinCode == freezed
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SessionModelCopyWith<$Res> implements $SessionModelCopyWith<$Res> {
  factory _$SessionModelCopyWith(_SessionModel value, $Res Function(_SessionModel) then) =
      __$SessionModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'uuid') String? uuid,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'users') List<UserModel?>? users,
      @JsonKey(name: 'protected') bool? protected,
      @JsonKey(name: 'created_at', fromJson: JsonParser.stringToDateTime) DateTime? createdAt,
      @JsonKey(name: 'expired_at', fromJson: JsonParser.stringToDateTime) DateTime? expiredAt,
      @JsonKey(name: 'pinCode') String? pinCode});
}

/// @nodoc
class __$SessionModelCopyWithImpl<$Res> extends _$SessionModelCopyWithImpl<$Res>
    implements _$SessionModelCopyWith<$Res> {
  __$SessionModelCopyWithImpl(_SessionModel _value, $Res Function(_SessionModel) _then)
      : super(_value, (v) => _then(v as _SessionModel));

  @override
  _SessionModel get _value => super._value as _SessionModel;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? users = freezed,
    Object? protected = freezed,
    Object? createdAt = freezed,
    Object? expiredAt = freezed,
    Object? pinCode = freezed,
  }) {
    return _then(_SessionModel(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserModel?>?,
      protected: protected == freezed
          ? _value.protected
          : protected // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiredAt: expiredAt == freezed
          ? _value.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pinCode: pinCode == freezed
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: true)
class _$_SessionModel implements _SessionModel {
  const _$_SessionModel(
      {@JsonKey(name: 'uuid') this.uuid,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'users') this.users,
      @JsonKey(name: 'protected') this.protected,
      @JsonKey(name: 'created_at', fromJson: JsonParser.stringToDateTime) this.createdAt,
      @JsonKey(name: 'expired_at', fromJson: JsonParser.stringToDateTime) this.expiredAt,
      @JsonKey(name: 'pinCode') this.pinCode});

  factory _$_SessionModel.fromJson(Map<String, dynamic> json) => _$_$_SessionModelFromJson(json);

  @override
  @JsonKey(name: 'uuid')
  final String? uuid;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'users')
  final List<UserModel?>? users;
  @override
  @JsonKey(name: 'protected')
  final bool? protected;
  @override
  @JsonKey(name: 'created_at', fromJson: JsonParser.stringToDateTime)
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'expired_at', fromJson: JsonParser.stringToDateTime)
  final DateTime? expiredAt;
  @override
  @JsonKey(name: 'pinCode')
  final String? pinCode;

  @override
  String toString() {
    return 'SessionModel(uuid: $uuid, name: $name, status: $status, users: $users, protected: $protected, createdAt: $createdAt, expiredAt: $expiredAt, pinCode: $pinCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SessionModel &&
            (identical(other.uuid, uuid) || const DeepCollectionEquality().equals(other.uuid, uuid)) &&
            (identical(other.name, name) || const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.status, status) || const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.users, users) || const DeepCollectionEquality().equals(other.users, users)) &&
            (identical(other.protected, protected) ||
                const DeepCollectionEquality().equals(other.protected, protected)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality().equals(other.createdAt, createdAt)) &&
            (identical(other.expiredAt, expiredAt) ||
                const DeepCollectionEquality().equals(other.expiredAt, expiredAt)) &&
            (identical(other.pinCode, pinCode) || const DeepCollectionEquality().equals(other.pinCode, pinCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(users) ^
      const DeepCollectionEquality().hash(protected) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(expiredAt) ^
      const DeepCollectionEquality().hash(pinCode);

  @JsonKey(ignore: true)
  @override
  _$SessionModelCopyWith<_SessionModel> get copyWith => __$SessionModelCopyWithImpl<_SessionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SessionModelToJson(this);
  }
}

abstract class _SessionModel implements SessionModel {
  const factory _SessionModel(
      {@JsonKey(name: 'uuid') String? uuid,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'users') List<UserModel?>? users,
      @JsonKey(name: 'protected') bool? protected,
      @JsonKey(name: 'created_at', fromJson: JsonParser.stringToDateTime) DateTime? createdAt,
      @JsonKey(name: 'expired_at', fromJson: JsonParser.stringToDateTime) DateTime? expiredAt,
      @JsonKey(name: 'pinCode') String? pinCode}) = _$_SessionModel;

  factory _SessionModel.fromJson(Map<String, dynamic> json) = _$_SessionModel.fromJson;

  @override
  @JsonKey(name: 'uuid')
  String? get uuid => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'users')
  List<UserModel?>? get users => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'protected')
  bool? get protected => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_at', fromJson: JsonParser.stringToDateTime)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'expired_at', fromJson: JsonParser.stringToDateTime)
  DateTime? get expiredAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'pinCode')
  String? get pinCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SessionModelCopyWith<_SessionModel> get copyWith => throw _privateConstructorUsedError;
}

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
class _$UserModelTearOff {
  const _$UserModelTearOff();

  _UserModel call(
      {@JsonKey(name: 'uuid') String? uuid,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'scores') int? scores,
      @JsonKey(name: 'created_at') String? createdAt}) {
    return _UserModel(
      uuid: uuid,
      name: name,
      email: email,
      scores: scores,
      createdAt: createdAt,
    );
  }

  UserModel fromJson(Map<String, Object> json) {
    return UserModel.fromJson(json);
  }
}

/// @nodoc
const $UserModel = _$UserModelTearOff();

/// @nodoc
mixin _$UserModel {
  @JsonKey(name: 'uuid')
  String? get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'scores')
  int? get scores => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) = _$UserModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'uuid') String? uuid,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'scores') int? scores,
      @JsonKey(name: 'created_at') String? createdAt});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res> implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  final UserModel _value;
  // ignore: unused_field
  final $Res Function(UserModel) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? scores = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      scores: scores == freezed
          ? _value.scores
          : scores // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(_UserModel value, $Res Function(_UserModel) then) = __$UserModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'uuid') String? uuid,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'scores') int? scores,
      @JsonKey(name: 'created_at') String? createdAt});
}

/// @nodoc
class __$UserModelCopyWithImpl<$Res> extends _$UserModelCopyWithImpl<$Res> implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(_UserModel _value, $Res Function(_UserModel) _then)
      : super(_value, (v) => _then(v as _UserModel));

  @override
  _UserModel get _value => super._value as _UserModel;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? scores = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_UserModel(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      scores: scores == freezed
          ? _value.scores
          : scores // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: true)
class _$_UserModel implements _UserModel {
  const _$_UserModel(
      {@JsonKey(name: 'uuid') this.uuid,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'scores') this.scores,
      @JsonKey(name: 'created_at') this.createdAt});

  factory _$_UserModel.fromJson(Map<String, dynamic> json) => _$_$_UserModelFromJson(json);

  @override
  @JsonKey(name: 'uuid')
  final String? uuid;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'scores')
  final int? scores;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;

  @override
  String toString() {
    return 'UserModel(uuid: $uuid, name: $name, email: $email, scores: $scores, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserModel &&
            (identical(other.uuid, uuid) || const DeepCollectionEquality().equals(other.uuid, uuid)) &&
            (identical(other.name, name) || const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) || const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.scores, scores) || const DeepCollectionEquality().equals(other.scores, scores)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality().equals(other.createdAt, createdAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(scores) ^
      const DeepCollectionEquality().hash(createdAt);

  @JsonKey(ignore: true)
  @override
  _$UserModelCopyWith<_UserModel> get copyWith => __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserModelToJson(this);
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {@JsonKey(name: 'uuid') String? uuid,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'scores') int? scores,
      @JsonKey(name: 'created_at') String? createdAt}) = _$_UserModel;

  factory _UserModel.fromJson(Map<String, dynamic> json) = _$_UserModel.fromJson;

  @override
  @JsonKey(name: 'uuid')
  String? get uuid => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'scores')
  int? get scores => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserModelCopyWith<_UserModel> get copyWith => throw _privateConstructorUsedError;
}

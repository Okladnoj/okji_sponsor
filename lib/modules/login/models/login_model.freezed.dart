// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginModelResponse _$LoginModelResponseFromJson(Map<String, dynamic> json) {
  return _LoginModelResponse.fromJson(json);
}

/// @nodoc
class _$LoginModelResponseTearOff {
  const _$LoginModelResponseTearOff();

  _LoginModelResponse call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') LoginModel? data}) {
    return _LoginModelResponse(
      code: code,
      message: message,
      data: data,
    );
  }

  LoginModelResponse fromJson(Map<String, Object> json) {
    return LoginModelResponse.fromJson(json);
  }
}

/// @nodoc
const $LoginModelResponse = _$LoginModelResponseTearOff();

/// @nodoc
mixin _$LoginModelResponse {
  @JsonKey(name: 'code')
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  LoginModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginModelResponseCopyWith<LoginModelResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginModelResponseCopyWith<$Res> {
  factory $LoginModelResponseCopyWith(
          LoginModelResponse value, $Res Function(LoginModelResponse) then) =
      _$LoginModelResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') LoginModel? data});

  $LoginModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$LoginModelResponseCopyWithImpl<$Res>
    implements $LoginModelResponseCopyWith<$Res> {
  _$LoginModelResponseCopyWithImpl(this._value, this._then);

  final LoginModelResponse _value;
  // ignore: unused_field
  final $Res Function(LoginModelResponse) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
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
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LoginModel?,
    ));
  }

  @override
  $LoginModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $LoginModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$LoginModelResponseCopyWith<$Res>
    implements $LoginModelResponseCopyWith<$Res> {
  factory _$LoginModelResponseCopyWith(
          _LoginModelResponse value, $Res Function(_LoginModelResponse) then) =
      __$LoginModelResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') LoginModel? data});

  @override
  $LoginModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$LoginModelResponseCopyWithImpl<$Res>
    extends _$LoginModelResponseCopyWithImpl<$Res>
    implements _$LoginModelResponseCopyWith<$Res> {
  __$LoginModelResponseCopyWithImpl(
      _LoginModelResponse _value, $Res Function(_LoginModelResponse) _then)
      : super(_value, (v) => _then(v as _LoginModelResponse));

  @override
  _LoginModelResponse get _value => super._value as _LoginModelResponse;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_LoginModelResponse(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LoginModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: true)
class _$_LoginModelResponse implements _LoginModelResponse {
  const _$_LoginModelResponse(
      {@JsonKey(name: 'code') this.code,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') this.data});

  factory _$_LoginModelResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_LoginModelResponseFromJson(json);

  @override
  @JsonKey(name: 'code')
  final int? code;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final LoginModel? data;

  @override
  String toString() {
    return 'LoginModelResponse(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginModelResponse &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$LoginModelResponseCopyWith<_LoginModelResponse> get copyWith =>
      __$LoginModelResponseCopyWithImpl<_LoginModelResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LoginModelResponseToJson(this);
  }
}

abstract class _LoginModelResponse implements LoginModelResponse {
  const factory _LoginModelResponse(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') LoginModel? data}) = _$_LoginModelResponse;

  factory _LoginModelResponse.fromJson(Map<String, dynamic> json) =
      _$_LoginModelResponse.fromJson;

  @override
  @JsonKey(name: 'code')
  int? get code => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'data')
  LoginModel? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoginModelResponseCopyWith<_LoginModelResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginModel _$LoginModelFromJson(Map<String, dynamic> json) {
  return _LoginModel.fromJson(json);
}

/// @nodoc
class _$LoginModelTearOff {
  const _$LoginModelTearOff();

  _LoginModel call(
      {@JsonKey(name: 'user') UserModel? user,
      @JsonKey(name: 'token') String? token}) {
    return _LoginModel(
      user: user,
      token: token,
    );
  }

  LoginModel fromJson(Map<String, Object> json) {
    return LoginModel.fromJson(json);
  }
}

/// @nodoc
const $LoginModel = _$LoginModelTearOff();

/// @nodoc
mixin _$LoginModel {
  @JsonKey(name: 'user')
  UserModel? get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'token')
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginModelCopyWith<LoginModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginModelCopyWith<$Res> {
  factory $LoginModelCopyWith(
          LoginModel value, $Res Function(LoginModel) then) =
      _$LoginModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'user') UserModel? user,
      @JsonKey(name: 'token') String? token});

  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$LoginModelCopyWithImpl<$Res> implements $LoginModelCopyWith<$Res> {
  _$LoginModelCopyWithImpl(this._value, this._then);

  final LoginModel _value;
  // ignore: unused_field
  final $Res Function(LoginModel) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$LoginModelCopyWith<$Res> implements $LoginModelCopyWith<$Res> {
  factory _$LoginModelCopyWith(
          _LoginModel value, $Res Function(_LoginModel) then) =
      __$LoginModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'user') UserModel? user,
      @JsonKey(name: 'token') String? token});

  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$LoginModelCopyWithImpl<$Res> extends _$LoginModelCopyWithImpl<$Res>
    implements _$LoginModelCopyWith<$Res> {
  __$LoginModelCopyWithImpl(
      _LoginModel _value, $Res Function(_LoginModel) _then)
      : super(_value, (v) => _then(v as _LoginModel));

  @override
  _LoginModel get _value => super._value as _LoginModel;

  @override
  $Res call({
    Object? user = freezed,
    Object? token = freezed,
  }) {
    return _then(_LoginModel(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: true)
class _$_LoginModel implements _LoginModel {
  const _$_LoginModel(
      {@JsonKey(name: 'user') this.user, @JsonKey(name: 'token') this.token});

  factory _$_LoginModel.fromJson(Map<String, dynamic> json) =>
      _$_$_LoginModelFromJson(json);

  @override
  @JsonKey(name: 'user')
  final UserModel? user;
  @override
  @JsonKey(name: 'token')
  final String? token;

  @override
  String toString() {
    return 'LoginModel(user: $user, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginModel &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(token);

  @JsonKey(ignore: true)
  @override
  _$LoginModelCopyWith<_LoginModel> get copyWith =>
      __$LoginModelCopyWithImpl<_LoginModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LoginModelToJson(this);
  }
}

abstract class _LoginModel implements LoginModel {
  const factory _LoginModel(
      {@JsonKey(name: 'user') UserModel? user,
      @JsonKey(name: 'token') String? token}) = _$_LoginModel;

  factory _LoginModel.fromJson(Map<String, dynamic> json) =
      _$_LoginModel.fromJson;

  @override
  @JsonKey(name: 'user')
  UserModel? get user => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'token')
  String? get token => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoginModelCopyWith<_LoginModel> get copyWith =>
      throw _privateConstructorUsedError;
}

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
class _$UserModelTearOff {
  const _$UserModelTearOff();

  _UserModel call(
      {@JsonKey(name: 'uuid') String? uuid,
      @JsonKey(name: 'kind') String? kind,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'created_at') String? createdAt}) {
    return _UserModel(
      uuid: uuid,
      kind: kind,
      email: email,
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
  @JsonKey(name: 'kind')
  String? get kind => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'uuid') String? uuid,
      @JsonKey(name: 'kind') String? kind,
      @JsonKey(name: 'email') String? email,
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
    Object? kind = freezed,
    Object? email = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(
          _UserModel value, $Res Function(_UserModel) then) =
      __$UserModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'uuid') String? uuid,
      @JsonKey(name: 'kind') String? kind,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'created_at') String? createdAt});
}

/// @nodoc
class __$UserModelCopyWithImpl<$Res> extends _$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(_UserModel _value, $Res Function(_UserModel) _then)
      : super(_value, (v) => _then(v as _UserModel));

  @override
  _UserModel get _value => super._value as _UserModel;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? kind = freezed,
    Object? email = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_UserModel(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
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
      @JsonKey(name: 'kind') this.kind,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'created_at') this.createdAt});

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$_$_UserModelFromJson(json);

  @override
  @JsonKey(name: 'uuid')
  final String? uuid;
  @override
  @JsonKey(name: 'kind')
  final String? kind;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;

  @override
  String toString() {
    return 'UserModel(uuid: $uuid, kind: $kind, email: $email, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserModel &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)) &&
            (identical(other.kind, kind) ||
                const DeepCollectionEquality().equals(other.kind, kind)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(kind) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(createdAt);

  @JsonKey(ignore: true)
  @override
  _$UserModelCopyWith<_UserModel> get copyWith =>
      __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserModelToJson(this);
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {@JsonKey(name: 'uuid') String? uuid,
      @JsonKey(name: 'kind') String? kind,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'created_at') String? createdAt}) = _$_UserModel;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  @JsonKey(name: 'uuid')
  String? get uuid => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'kind')
  String? get kind => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserModelCopyWith<_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

SinInModel _$SinInModelFromJson(Map<String, dynamic> json) {
  return _SinInModel.fromJson(json);
}

/// @nodoc
class _$SinInModelTearOff {
  const _$SinInModelTearOff();

  _SinInModel call(
      {@JsonKey(name: 'email') String? email,
      @JsonKey(name: 'password') String? password}) {
    return _SinInModel(
      email: email,
      password: password,
    );
  }

  SinInModel fromJson(Map<String, Object> json) {
    return SinInModel.fromJson(json);
  }
}

/// @nodoc
const $SinInModel = _$SinInModelTearOff();

/// @nodoc
mixin _$SinInModel {
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SinInModelCopyWith<SinInModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SinInModelCopyWith<$Res> {
  factory $SinInModelCopyWith(
          SinInModel value, $Res Function(SinInModel) then) =
      _$SinInModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'email') String? email,
      @JsonKey(name: 'password') String? password});
}

/// @nodoc
class _$SinInModelCopyWithImpl<$Res> implements $SinInModelCopyWith<$Res> {
  _$SinInModelCopyWithImpl(this._value, this._then);

  final SinInModel _value;
  // ignore: unused_field
  final $Res Function(SinInModel) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SinInModelCopyWith<$Res> implements $SinInModelCopyWith<$Res> {
  factory _$SinInModelCopyWith(
          _SinInModel value, $Res Function(_SinInModel) then) =
      __$SinInModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'email') String? email,
      @JsonKey(name: 'password') String? password});
}

/// @nodoc
class __$SinInModelCopyWithImpl<$Res> extends _$SinInModelCopyWithImpl<$Res>
    implements _$SinInModelCopyWith<$Res> {
  __$SinInModelCopyWithImpl(
      _SinInModel _value, $Res Function(_SinInModel) _then)
      : super(_value, (v) => _then(v as _SinInModel));

  @override
  _SinInModel get _value => super._value as _SinInModel;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_SinInModel(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: true)
class _$_SinInModel implements _SinInModel {
  const _$_SinInModel(
      {@JsonKey(name: 'email') this.email,
      @JsonKey(name: 'password') this.password});

  factory _$_SinInModel.fromJson(Map<String, dynamic> json) =>
      _$_$_SinInModelFromJson(json);

  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'password')
  final String? password;

  @override
  String toString() {
    return 'SinInModel(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SinInModel &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$SinInModelCopyWith<_SinInModel> get copyWith =>
      __$SinInModelCopyWithImpl<_SinInModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SinInModelToJson(this);
  }
}

abstract class _SinInModel implements SinInModel {
  const factory _SinInModel(
      {@JsonKey(name: 'email') String? email,
      @JsonKey(name: 'password') String? password}) = _$_SinInModel;

  factory _SinInModel.fromJson(Map<String, dynamic> json) =
      _$_SinInModel.fromJson;

  @override
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'password')
  String? get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SinInModelCopyWith<_SinInModel> get copyWith =>
      throw _privateConstructorUsedError;
}

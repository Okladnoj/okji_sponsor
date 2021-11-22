// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginModelResponse _$$_LoginModelResponseFromJson(
        Map<String, dynamic> json) =>
    _$_LoginModelResponse(
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : LoginModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LoginModelResponseToJson(
        _$_LoginModelResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data?.toJson(),
    };

_$_LoginModel _$$_LoginModelFromJson(Map<String, dynamic> json) =>
    _$_LoginModel(
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$_LoginModelToJson(_$_LoginModel instance) =>
    <String, dynamic>{
      'user': instance.user?.toJson(),
      'token': instance.token,
    };

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      uuid: json['uuid'] as String?,
      kind: json['kind'] as String?,
      email: json['email'] as String?,
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'kind': instance.kind,
      'email': instance.email,
      'created_at': instance.createdAt,
    };

_$_SinInModel _$$_SinInModelFromJson(Map<String, dynamic> json) =>
    _$_SinInModel(
      email: json['email'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$$_SinInModelToJson(_$_SinInModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

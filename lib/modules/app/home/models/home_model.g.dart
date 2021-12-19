// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeModelResponse _$$_HomeModelResponseFromJson(Map<String, dynamic> json) =>
    _$_HomeModelResponse(
      code: json['code'] as int?,
      message: json['message'] as String?,
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$$_HomeModelResponseToJson(
        _$_HomeModelResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'user': instance.user?.toJson(),
    };

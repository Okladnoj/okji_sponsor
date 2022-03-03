// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PersonModelResponse _$$_PersonModelResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PersonModelResponse(
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$$_PersonModelResponseToJson(
        _$_PersonModelResponse instance) =>
    <String, dynamic>{
      'user': instance.user?.toJson(),
    };

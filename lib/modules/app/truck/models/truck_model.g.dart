// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'truck_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TruckModelResponse _$_$_TruckModelResponseFromJson(Map<String, dynamic> json) {
  return _$_TruckModelResponse(
    code: json['code'] as int?,
    message: json['message'] as String?,
    listSession: (json['data'] as List<dynamic>?)
        ?.map((e) => e == null ? null : SessionModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_TruckModelResponseToJson(_$_TruckModelResponse instance) => <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.listSession?.map((e) => e?.toJson()).toList(),
    };

_$_SessionModel _$_$_SessionModelFromJson(Map<String, dynamic> json) {
  return _$_SessionModel(
    uuid: json['uuid'] as String?,
    name: json['name'] as String?,
    status: json['status'] as String?,
    users: (json['users'] as List<dynamic>?)
        ?.map((e) => e == null ? null : UserModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    protected: json['protected'] as bool?,
    createdAt: JsonParser.stringToDateTime(json['created_at'] as String?),
    expiredAt: JsonParser.stringToDateTime(json['expired_at'] as String?),
    pinCode: json['pinCode'] as String?,
  );
}

Map<String, dynamic> _$_$_SessionModelToJson(_$_SessionModel instance) => <String, dynamic>{
      'uuid': instance.uuid,
      'name': instance.name,
      'status': instance.status,
      'users': instance.users?.map((e) => e?.toJson()).toList(),
      'protected': instance.protected,
      'created_at': instance.createdAt?.toIso8601String(),
      'expired_at': instance.expiredAt?.toIso8601String(),
      'pinCode': instance.pinCode,
    };

_$_UserModel _$_$_UserModelFromJson(Map<String, dynamic> json) {
  return _$_UserModel(
    uuid: json['uuid'] as String?,
    name: json['name'] as String?,
    email: json['email'] as String?,
    scores: json['scores'] as int?,
    createdAt: json['created_at'] as String?,
  );
}

Map<String, dynamic> _$_$_UserModelToJson(_$_UserModel instance) => <String, dynamic>{
      'uuid': instance.uuid,
      'name': instance.name,
      'email': instance.email,
      'scores': instance.scores,
      'created_at': instance.createdAt,
    };

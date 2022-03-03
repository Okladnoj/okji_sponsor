// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'administration_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AdministrationModelResponse _$$_AdministrationModelResponseFromJson(
        Map<String, dynamic> json) =>
    _$_AdministrationModelResponse(
      blackUsers: (json['blackUsers'] as List<dynamic>?)
          ?.map((e) => UserModel.fromJson(e as Map<String, dynamic>?))
          .toList(),
      friendUsers: (json['friendUsers'] as List<dynamic>?)
          ?.map((e) => UserModel.fromJson(e as Map<String, dynamic>?))
          .toList(),
      subscribeUsers: (json['subscribeUsers'] as List<dynamic>?)
          ?.map((e) => UserModel.fromJson(e as Map<String, dynamic>?))
          .toList(),
      type: $enumDecodeNullable(_$StatusTypeEnumMap, json['statusType']),
    );

Map<String, dynamic> _$$_AdministrationModelResponseToJson(
        _$_AdministrationModelResponse instance) =>
    <String, dynamic>{
      'blackUsers': instance.blackUsers?.map((e) => e.toJson()).toList(),
      'friendUsers': instance.friendUsers?.map((e) => e.toJson()).toList(),
      'subscribeUsers':
          instance.subscribeUsers?.map((e) => e.toJson()).toList(),
      'statusType': _$StatusTypeEnumMap[instance.type],
    };

const _$StatusTypeEnumMap = {
  StatusType.blackList: 'blackList',
  StatusType.friendList: 'friendList',
  StatusType.subscribeList: 'subscribeList',
};

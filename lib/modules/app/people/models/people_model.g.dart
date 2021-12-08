// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'people_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PeopleModelResponse _$$_PeopleModelResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PeopleModelResponse(
      allUsers: (json['allUsers'] as List<dynamic>?)
          ?.map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      friendUsers: (json['friendUsers'] as List<dynamic>?)
          ?.map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      subscribeUsers: (json['subscribeUsers'] as List<dynamic>?)
          ?.map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: $enumDecodeNullable(_$PeopleTypeEnumMap, json['peopleType']),
    );

Map<String, dynamic> _$$_PeopleModelResponseToJson(
        _$_PeopleModelResponse instance) =>
    <String, dynamic>{
      'allUsers': instance.allUsers?.map((e) => e.toJson()).toList(),
      'friendUsers': instance.friendUsers?.map((e) => e.toJson()).toList(),
      'subscribeUsers':
          instance.subscribeUsers?.map((e) => e.toJson()).toList(),
      'peopleType': _$PeopleTypeEnumMap[instance.type],
    };

const _$PeopleTypeEnumMap = {
  PeopleType.all: 'all',
  PeopleType.friend: 'friend',
  PeopleType.subscribe: 'subscribe',
};

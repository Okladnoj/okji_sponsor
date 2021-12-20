// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: json['id'] as String?,
      name: json['name'] == null
          ? null
          : UserStringProperty.fromJson(json['name'] as Map<String, dynamic>?),
      phone: json['phone'] == null
          ? null
          : UserStringProperty.fromJson(json['phone'] as Map<String, dynamic>?),
      email: json['email'] == null
          ? null
          : UserStringProperty.fromJson(json['email'] as Map<String, dynamic>?),
      avatar: json['avatar'] == null
          ? null
          : UserStringProperty.fromJson(
              json['avatar'] as Map<String, dynamic>?),
      age: json['age'] == null
          ? null
          : UserIntProperty.fromJson(json['age'] as Map<String, dynamic>?),
      height: json['height'] == null
          ? null
          : UserIntProperty.fromJson(json['height'] as Map<String, dynamic>?),
      weight: json['weight'] == null
          ? null
          : UserIntProperty.fromJson(json['weight'] as Map<String, dynamic>?),
      chest: json['chest'] == null
          ? null
          : UserIntProperty.fromJson(json['chest'] as Map<String, dynamic>?),
      waist: json['waist'] == null
          ? null
          : UserIntProperty.fromJson(json['waist'] as Map<String, dynamic>?),
      hip: json['hip'] == null
          ? null
          : UserIntProperty.fromJson(json['hip'] as Map<String, dynamic>?),
      friends:
          (json['friends'] as List<dynamic>?)?.map((e) => e as String).toSet(),
      subscribes: (json['subscribes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toSet(),
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name?.toJson(),
      'phone': instance.phone?.toJson(),
      'email': instance.email?.toJson(),
      'avatar': instance.avatar?.toJson(),
      'age': instance.age?.toJson(),
      'height': instance.height?.toJson(),
      'weight': instance.weight?.toJson(),
      'chest': instance.chest?.toJson(),
      'waist': instance.waist?.toJson(),
      'hip': instance.hip?.toJson(),
      'friends': instance.friends?.toList(),
      'subscribes': instance.subscribes?.toList(),
    };

_$_UserIntProperty _$$_UserIntPropertyFromJson(Map<String, dynamic> json) =>
    _$_UserIntProperty(
      value: json['value'] as int?,
      access: $enumDecodeNullable(_$PeopleTypeEnumMap, json['access']),
    );

Map<String, dynamic> _$$_UserIntPropertyToJson(_$_UserIntProperty instance) =>
    <String, dynamic>{
      'value': instance.value,
      'access': _$PeopleTypeEnumMap[instance.access],
    };

const _$PeopleTypeEnumMap = {
  PeopleType.all: 'all',
  PeopleType.friend: 'friend',
  PeopleType.subscribe: 'subscribe',
  PeopleType.none: 'none',
};

_$_UserStringProperty _$$_UserStringPropertyFromJson(
        Map<String, dynamic> json) =>
    _$_UserStringProperty(
      value: json['value'] as String?,
      access: $enumDecodeNullable(_$PeopleTypeEnumMap, json['access']),
    );

Map<String, dynamic> _$$_UserStringPropertyToJson(
        _$_UserStringProperty instance) =>
    <String, dynamic>{
      'value': instance.value,
      'access': _$PeopleTypeEnumMap[instance.access],
    };

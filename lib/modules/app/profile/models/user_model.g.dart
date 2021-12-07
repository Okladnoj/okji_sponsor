// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      avatar: json['avatar'] as String?,
      age: json['age'] as int?,
      height: json['height'] as int?,
      weight: json['weight'] as int?,
      chest: json['chest'] as int?,
      waist: json['waist'] as int?,
      hip: json['hip'] as int?,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'email': instance.email,
      'avatar': instance.avatar,
      'age': instance.age,
      'height': instance.height,
      'weight': instance.weight,
      'chest': instance.chest,
      'waist': instance.waist,
      'hip': instance.hip,
    };

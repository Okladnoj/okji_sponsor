// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'truck_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TruckModel _$$_TruckModelFromJson(Map<String, dynamic> json) =>
    _$_TruckModel(
      currentPoint: json['currentPoint'] == null
          ? null
          : CurrentPointModel.fromJson(
              json['currentPoint'] as Map<String, dynamic>),
      currentPoints: (json['currentPoints'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : CurrentPointModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      midPoints: (json['midPoints'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : CurrentPointModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TruckModelToJson(_$_TruckModel instance) =>
    <String, dynamic>{
      'currentPoint': instance.currentPoint?.toJson(),
      'currentPoints': instance.currentPoints?.map((e) => e?.toJson()).toList(),
      'midPoints': instance.midPoints?.map((e) => e?.toJson()).toList(),
    };

_$_CurrentPointModel _$$_CurrentPointModelFromJson(Map<String, dynamic> json) =>
    _$_CurrentPointModel(
      accelerometer: json['accelerometer'] == null
          ? null
          : VolumeModel.fromJson(json['accelerometer'] as Map<String, dynamic>),
      userAccelerometer: json['userAccelerometer'] == null
          ? null
          : VolumeModel.fromJson(
              json['userAccelerometer'] as Map<String, dynamic>),
      gyroscope: json['gyroscope'] == null
          ? null
          : VolumeModel.fromJson(json['gyroscope'] as Map<String, dynamic>),
      magnetometer: json['magnetometer'] == null
          ? null
          : VolumeModel.fromJson(json['magnetometer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CurrentPointModelToJson(
        _$_CurrentPointModel instance) =>
    <String, dynamic>{
      'accelerometer': instance.accelerometer?.toJson(),
      'userAccelerometer': instance.userAccelerometer?.toJson(),
      'gyroscope': instance.gyroscope?.toJson(),
      'magnetometer': instance.magnetometer?.toJson(),
    };

_$_VolumeModel _$$_VolumeModelFromJson(Map<String, dynamic> json) =>
    _$_VolumeModel(
      x: (json['x'] as num?)?.toDouble(),
      y: (json['y'] as num?)?.toDouble(),
      z: (json['z'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_VolumeModelToJson(_$_VolumeModel instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
      'z': instance.z,
    };

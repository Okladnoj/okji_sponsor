import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'truck_model.freezed.dart';
part 'truck_model.g.dart';

@freezed
class TruckModel with _$TruckModel {
  @JsonSerializable(explicitToJson: true, includeIfNull: true)
  const factory TruckModel({
    @JsonKey(name: 'currentPoint') CurrentPointModel? currentPoint,
    @JsonKey(name: 'currentPoints') List<CurrentPointModel?>? currentPoints,
    @JsonKey(name: 'midPoints') List<CurrentPointModel?>? midPoints,
  }) = _TruckModel;

  factory TruckModel.fromJson(Map<String, dynamic> json) => _$TruckModelFromJson(json);

  factory TruckModel.empty() => TruckModel(
        currentPoint: CurrentPointModel.empty(),
        currentPoints: [],
        midPoints: [],
      );
}

@freezed
class CurrentPointModel with _$CurrentPointModel {
  @JsonSerializable(explicitToJson: true, includeIfNull: true)
  const factory CurrentPointModel({
    @JsonKey(name: 'accelerometer') VolumeModel? accelerometer,
    @JsonKey(name: 'userAccelerometer') VolumeModel? userAccelerometer,
    @JsonKey(name: 'gyroscope') VolumeModel? gyroscope,
    @JsonKey(name: 'magnetometer') VolumeModel? magnetometer,
  }) = _CurrentPointModel;

  factory CurrentPointModel.fromJson(Map<String, dynamic> json) => _$CurrentPointModelFromJson(json);

  factory CurrentPointModel.empty() => CurrentPointModel(
        accelerometer: VolumeModel.empty(),
        userAccelerometer: VolumeModel.empty(),
        gyroscope: VolumeModel.empty(),
        magnetometer: VolumeModel.empty(),
      );
}

@freezed
class VolumeModel with _$VolumeModel {
  @JsonSerializable(explicitToJson: true, includeIfNull: true)
  const factory VolumeModel({
    @JsonKey(name: 'x') double? x,
    @JsonKey(name: 'y') double? y,
    @JsonKey(name: 'z') double? z,
  }) = _VolumeModel;

  const VolumeModel._();

  factory VolumeModel.fromJson(Map<String, dynamic> json) => _$VolumeModelFromJson(json);

  factory VolumeModel.empty() => const VolumeModel();

  double get module {
    final _x = x ?? 0;
    final _y = y ?? 0;
    final _z = z ?? 0;

    return sqrt(pow(_x, 2) + pow(_y, 2) + pow(_z, 2));
  }
}

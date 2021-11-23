// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'truck_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TruckModel _$TruckModelFromJson(Map<String, dynamic> json) {
  return _TruckModel.fromJson(json);
}

/// @nodoc
class _$TruckModelTearOff {
  const _$TruckModelTearOff();

  _TruckModel call(
      {@JsonKey(name: 'currentPoint') CurrentPointModel? currentPoint,
      @JsonKey(name: 'currentPoints') List<CurrentPointModel?>? currentPoints,
      @JsonKey(name: 'midPoints') List<CurrentPointModel?>? midPoints}) {
    return _TruckModel(
      currentPoint: currentPoint,
      currentPoints: currentPoints,
      midPoints: midPoints,
    );
  }

  TruckModel fromJson(Map<String, Object?> json) {
    return TruckModel.fromJson(json);
  }
}

/// @nodoc
const $TruckModel = _$TruckModelTearOff();

/// @nodoc
mixin _$TruckModel {
  @JsonKey(name: 'currentPoint')
  CurrentPointModel? get currentPoint => throw _privateConstructorUsedError;
  @JsonKey(name: 'currentPoints')
  List<CurrentPointModel?>? get currentPoints =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'midPoints')
  List<CurrentPointModel?>? get midPoints => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TruckModelCopyWith<TruckModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TruckModelCopyWith<$Res> {
  factory $TruckModelCopyWith(
          TruckModel value, $Res Function(TruckModel) then) =
      _$TruckModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'currentPoint') CurrentPointModel? currentPoint,
      @JsonKey(name: 'currentPoints') List<CurrentPointModel?>? currentPoints,
      @JsonKey(name: 'midPoints') List<CurrentPointModel?>? midPoints});

  $CurrentPointModelCopyWith<$Res>? get currentPoint;
}

/// @nodoc
class _$TruckModelCopyWithImpl<$Res> implements $TruckModelCopyWith<$Res> {
  _$TruckModelCopyWithImpl(this._value, this._then);

  final TruckModel _value;
  // ignore: unused_field
  final $Res Function(TruckModel) _then;

  @override
  $Res call({
    Object? currentPoint = freezed,
    Object? currentPoints = freezed,
    Object? midPoints = freezed,
  }) {
    return _then(_value.copyWith(
      currentPoint: currentPoint == freezed
          ? _value.currentPoint
          : currentPoint // ignore: cast_nullable_to_non_nullable
              as CurrentPointModel?,
      currentPoints: currentPoints == freezed
          ? _value.currentPoints
          : currentPoints // ignore: cast_nullable_to_non_nullable
              as List<CurrentPointModel?>?,
      midPoints: midPoints == freezed
          ? _value.midPoints
          : midPoints // ignore: cast_nullable_to_non_nullable
              as List<CurrentPointModel?>?,
    ));
  }

  @override
  $CurrentPointModelCopyWith<$Res>? get currentPoint {
    if (_value.currentPoint == null) {
      return null;
    }

    return $CurrentPointModelCopyWith<$Res>(_value.currentPoint!, (value) {
      return _then(_value.copyWith(currentPoint: value));
    });
  }
}

/// @nodoc
abstract class _$TruckModelCopyWith<$Res> implements $TruckModelCopyWith<$Res> {
  factory _$TruckModelCopyWith(
          _TruckModel value, $Res Function(_TruckModel) then) =
      __$TruckModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'currentPoint') CurrentPointModel? currentPoint,
      @JsonKey(name: 'currentPoints') List<CurrentPointModel?>? currentPoints,
      @JsonKey(name: 'midPoints') List<CurrentPointModel?>? midPoints});

  @override
  $CurrentPointModelCopyWith<$Res>? get currentPoint;
}

/// @nodoc
class __$TruckModelCopyWithImpl<$Res> extends _$TruckModelCopyWithImpl<$Res>
    implements _$TruckModelCopyWith<$Res> {
  __$TruckModelCopyWithImpl(
      _TruckModel _value, $Res Function(_TruckModel) _then)
      : super(_value, (v) => _then(v as _TruckModel));

  @override
  _TruckModel get _value => super._value as _TruckModel;

  @override
  $Res call({
    Object? currentPoint = freezed,
    Object? currentPoints = freezed,
    Object? midPoints = freezed,
  }) {
    return _then(_TruckModel(
      currentPoint: currentPoint == freezed
          ? _value.currentPoint
          : currentPoint // ignore: cast_nullable_to_non_nullable
              as CurrentPointModel?,
      currentPoints: currentPoints == freezed
          ? _value.currentPoints
          : currentPoints // ignore: cast_nullable_to_non_nullable
              as List<CurrentPointModel?>?,
      midPoints: midPoints == freezed
          ? _value.midPoints
          : midPoints // ignore: cast_nullable_to_non_nullable
              as List<CurrentPointModel?>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: true)
class _$_TruckModel implements _TruckModel {
  const _$_TruckModel(
      {@JsonKey(name: 'currentPoint') this.currentPoint,
      @JsonKey(name: 'currentPoints') this.currentPoints,
      @JsonKey(name: 'midPoints') this.midPoints});

  factory _$_TruckModel.fromJson(Map<String, dynamic> json) =>
      _$$_TruckModelFromJson(json);

  @override
  @JsonKey(name: 'currentPoint')
  final CurrentPointModel? currentPoint;
  @override
  @JsonKey(name: 'currentPoints')
  final List<CurrentPointModel?>? currentPoints;
  @override
  @JsonKey(name: 'midPoints')
  final List<CurrentPointModel?>? midPoints;

  @override
  String toString() {
    return 'TruckModel(currentPoint: $currentPoint, currentPoints: $currentPoints, midPoints: $midPoints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TruckModel &&
            (identical(other.currentPoint, currentPoint) ||
                other.currentPoint == currentPoint) &&
            const DeepCollectionEquality()
                .equals(other.currentPoints, currentPoints) &&
            const DeepCollectionEquality().equals(other.midPoints, midPoints));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentPoint,
      const DeepCollectionEquality().hash(currentPoints),
      const DeepCollectionEquality().hash(midPoints));

  @JsonKey(ignore: true)
  @override
  _$TruckModelCopyWith<_TruckModel> get copyWith =>
      __$TruckModelCopyWithImpl<_TruckModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TruckModelToJson(this);
  }
}

abstract class _TruckModel implements TruckModel {
  const factory _TruckModel(
      {@JsonKey(name: 'currentPoint')
          CurrentPointModel? currentPoint,
      @JsonKey(name: 'currentPoints')
          List<CurrentPointModel?>? currentPoints,
      @JsonKey(name: 'midPoints')
          List<CurrentPointModel?>? midPoints}) = _$_TruckModel;

  factory _TruckModel.fromJson(Map<String, dynamic> json) =
      _$_TruckModel.fromJson;

  @override
  @JsonKey(name: 'currentPoint')
  CurrentPointModel? get currentPoint;
  @override
  @JsonKey(name: 'currentPoints')
  List<CurrentPointModel?>? get currentPoints;
  @override
  @JsonKey(name: 'midPoints')
  List<CurrentPointModel?>? get midPoints;
  @override
  @JsonKey(ignore: true)
  _$TruckModelCopyWith<_TruckModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CurrentPointModel _$CurrentPointModelFromJson(Map<String, dynamic> json) {
  return _CurrentPointModel.fromJson(json);
}

/// @nodoc
class _$CurrentPointModelTearOff {
  const _$CurrentPointModelTearOff();

  _CurrentPointModel call(
      {@JsonKey(name: 'accelerometer') VolumeModel? accelerometer,
      @JsonKey(name: 'userAccelerometer') VolumeModel? userAccelerometer,
      @JsonKey(name: 'gyroscope') VolumeModel? gyroscope,
      @JsonKey(name: 'magnetometer') VolumeModel? magnetometer}) {
    return _CurrentPointModel(
      accelerometer: accelerometer,
      userAccelerometer: userAccelerometer,
      gyroscope: gyroscope,
      magnetometer: magnetometer,
    );
  }

  CurrentPointModel fromJson(Map<String, Object?> json) {
    return CurrentPointModel.fromJson(json);
  }
}

/// @nodoc
const $CurrentPointModel = _$CurrentPointModelTearOff();

/// @nodoc
mixin _$CurrentPointModel {
  @JsonKey(name: 'accelerometer')
  VolumeModel? get accelerometer => throw _privateConstructorUsedError;
  @JsonKey(name: 'userAccelerometer')
  VolumeModel? get userAccelerometer => throw _privateConstructorUsedError;
  @JsonKey(name: 'gyroscope')
  VolumeModel? get gyroscope => throw _privateConstructorUsedError;
  @JsonKey(name: 'magnetometer')
  VolumeModel? get magnetometer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentPointModelCopyWith<CurrentPointModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentPointModelCopyWith<$Res> {
  factory $CurrentPointModelCopyWith(
          CurrentPointModel value, $Res Function(CurrentPointModel) then) =
      _$CurrentPointModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'accelerometer') VolumeModel? accelerometer,
      @JsonKey(name: 'userAccelerometer') VolumeModel? userAccelerometer,
      @JsonKey(name: 'gyroscope') VolumeModel? gyroscope,
      @JsonKey(name: 'magnetometer') VolumeModel? magnetometer});

  $VolumeModelCopyWith<$Res>? get accelerometer;
  $VolumeModelCopyWith<$Res>? get userAccelerometer;
  $VolumeModelCopyWith<$Res>? get gyroscope;
  $VolumeModelCopyWith<$Res>? get magnetometer;
}

/// @nodoc
class _$CurrentPointModelCopyWithImpl<$Res>
    implements $CurrentPointModelCopyWith<$Res> {
  _$CurrentPointModelCopyWithImpl(this._value, this._then);

  final CurrentPointModel _value;
  // ignore: unused_field
  final $Res Function(CurrentPointModel) _then;

  @override
  $Res call({
    Object? accelerometer = freezed,
    Object? userAccelerometer = freezed,
    Object? gyroscope = freezed,
    Object? magnetometer = freezed,
  }) {
    return _then(_value.copyWith(
      accelerometer: accelerometer == freezed
          ? _value.accelerometer
          : accelerometer // ignore: cast_nullable_to_non_nullable
              as VolumeModel?,
      userAccelerometer: userAccelerometer == freezed
          ? _value.userAccelerometer
          : userAccelerometer // ignore: cast_nullable_to_non_nullable
              as VolumeModel?,
      gyroscope: gyroscope == freezed
          ? _value.gyroscope
          : gyroscope // ignore: cast_nullable_to_non_nullable
              as VolumeModel?,
      magnetometer: magnetometer == freezed
          ? _value.magnetometer
          : magnetometer // ignore: cast_nullable_to_non_nullable
              as VolumeModel?,
    ));
  }

  @override
  $VolumeModelCopyWith<$Res>? get accelerometer {
    if (_value.accelerometer == null) {
      return null;
    }

    return $VolumeModelCopyWith<$Res>(_value.accelerometer!, (value) {
      return _then(_value.copyWith(accelerometer: value));
    });
  }

  @override
  $VolumeModelCopyWith<$Res>? get userAccelerometer {
    if (_value.userAccelerometer == null) {
      return null;
    }

    return $VolumeModelCopyWith<$Res>(_value.userAccelerometer!, (value) {
      return _then(_value.copyWith(userAccelerometer: value));
    });
  }

  @override
  $VolumeModelCopyWith<$Res>? get gyroscope {
    if (_value.gyroscope == null) {
      return null;
    }

    return $VolumeModelCopyWith<$Res>(_value.gyroscope!, (value) {
      return _then(_value.copyWith(gyroscope: value));
    });
  }

  @override
  $VolumeModelCopyWith<$Res>? get magnetometer {
    if (_value.magnetometer == null) {
      return null;
    }

    return $VolumeModelCopyWith<$Res>(_value.magnetometer!, (value) {
      return _then(_value.copyWith(magnetometer: value));
    });
  }
}

/// @nodoc
abstract class _$CurrentPointModelCopyWith<$Res>
    implements $CurrentPointModelCopyWith<$Res> {
  factory _$CurrentPointModelCopyWith(
          _CurrentPointModel value, $Res Function(_CurrentPointModel) then) =
      __$CurrentPointModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'accelerometer') VolumeModel? accelerometer,
      @JsonKey(name: 'userAccelerometer') VolumeModel? userAccelerometer,
      @JsonKey(name: 'gyroscope') VolumeModel? gyroscope,
      @JsonKey(name: 'magnetometer') VolumeModel? magnetometer});

  @override
  $VolumeModelCopyWith<$Res>? get accelerometer;
  @override
  $VolumeModelCopyWith<$Res>? get userAccelerometer;
  @override
  $VolumeModelCopyWith<$Res>? get gyroscope;
  @override
  $VolumeModelCopyWith<$Res>? get magnetometer;
}

/// @nodoc
class __$CurrentPointModelCopyWithImpl<$Res>
    extends _$CurrentPointModelCopyWithImpl<$Res>
    implements _$CurrentPointModelCopyWith<$Res> {
  __$CurrentPointModelCopyWithImpl(
      _CurrentPointModel _value, $Res Function(_CurrentPointModel) _then)
      : super(_value, (v) => _then(v as _CurrentPointModel));

  @override
  _CurrentPointModel get _value => super._value as _CurrentPointModel;

  @override
  $Res call({
    Object? accelerometer = freezed,
    Object? userAccelerometer = freezed,
    Object? gyroscope = freezed,
    Object? magnetometer = freezed,
  }) {
    return _then(_CurrentPointModel(
      accelerometer: accelerometer == freezed
          ? _value.accelerometer
          : accelerometer // ignore: cast_nullable_to_non_nullable
              as VolumeModel?,
      userAccelerometer: userAccelerometer == freezed
          ? _value.userAccelerometer
          : userAccelerometer // ignore: cast_nullable_to_non_nullable
              as VolumeModel?,
      gyroscope: gyroscope == freezed
          ? _value.gyroscope
          : gyroscope // ignore: cast_nullable_to_non_nullable
              as VolumeModel?,
      magnetometer: magnetometer == freezed
          ? _value.magnetometer
          : magnetometer // ignore: cast_nullable_to_non_nullable
              as VolumeModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: true)
class _$_CurrentPointModel implements _CurrentPointModel {
  const _$_CurrentPointModel(
      {@JsonKey(name: 'accelerometer') this.accelerometer,
      @JsonKey(name: 'userAccelerometer') this.userAccelerometer,
      @JsonKey(name: 'gyroscope') this.gyroscope,
      @JsonKey(name: 'magnetometer') this.magnetometer});

  factory _$_CurrentPointModel.fromJson(Map<String, dynamic> json) =>
      _$$_CurrentPointModelFromJson(json);

  @override
  @JsonKey(name: 'accelerometer')
  final VolumeModel? accelerometer;
  @override
  @JsonKey(name: 'userAccelerometer')
  final VolumeModel? userAccelerometer;
  @override
  @JsonKey(name: 'gyroscope')
  final VolumeModel? gyroscope;
  @override
  @JsonKey(name: 'magnetometer')
  final VolumeModel? magnetometer;

  @override
  String toString() {
    return 'CurrentPointModel(accelerometer: $accelerometer, userAccelerometer: $userAccelerometer, gyroscope: $gyroscope, magnetometer: $magnetometer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CurrentPointModel &&
            (identical(other.accelerometer, accelerometer) ||
                other.accelerometer == accelerometer) &&
            (identical(other.userAccelerometer, userAccelerometer) ||
                other.userAccelerometer == userAccelerometer) &&
            (identical(other.gyroscope, gyroscope) ||
                other.gyroscope == gyroscope) &&
            (identical(other.magnetometer, magnetometer) ||
                other.magnetometer == magnetometer));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, accelerometer, userAccelerometer, gyroscope, magnetometer);

  @JsonKey(ignore: true)
  @override
  _$CurrentPointModelCopyWith<_CurrentPointModel> get copyWith =>
      __$CurrentPointModelCopyWithImpl<_CurrentPointModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrentPointModelToJson(this);
  }
}

abstract class _CurrentPointModel implements CurrentPointModel {
  const factory _CurrentPointModel(
          {@JsonKey(name: 'accelerometer') VolumeModel? accelerometer,
          @JsonKey(name: 'userAccelerometer') VolumeModel? userAccelerometer,
          @JsonKey(name: 'gyroscope') VolumeModel? gyroscope,
          @JsonKey(name: 'magnetometer') VolumeModel? magnetometer}) =
      _$_CurrentPointModel;

  factory _CurrentPointModel.fromJson(Map<String, dynamic> json) =
      _$_CurrentPointModel.fromJson;

  @override
  @JsonKey(name: 'accelerometer')
  VolumeModel? get accelerometer;
  @override
  @JsonKey(name: 'userAccelerometer')
  VolumeModel? get userAccelerometer;
  @override
  @JsonKey(name: 'gyroscope')
  VolumeModel? get gyroscope;
  @override
  @JsonKey(name: 'magnetometer')
  VolumeModel? get magnetometer;
  @override
  @JsonKey(ignore: true)
  _$CurrentPointModelCopyWith<_CurrentPointModel> get copyWith =>
      throw _privateConstructorUsedError;
}

VolumeModel _$VolumeModelFromJson(Map<String, dynamic> json) {
  return _VolumeModel.fromJson(json);
}

/// @nodoc
class _$VolumeModelTearOff {
  const _$VolumeModelTearOff();

  _VolumeModel call(
      {@JsonKey(name: 'x') double? x,
      @JsonKey(name: 'y') double? y,
      @JsonKey(name: 'z') double? z}) {
    return _VolumeModel(
      x: x,
      y: y,
      z: z,
    );
  }

  VolumeModel fromJson(Map<String, Object?> json) {
    return VolumeModel.fromJson(json);
  }
}

/// @nodoc
const $VolumeModel = _$VolumeModelTearOff();

/// @nodoc
mixin _$VolumeModel {
  @JsonKey(name: 'x')
  double? get x => throw _privateConstructorUsedError;
  @JsonKey(name: 'y')
  double? get y => throw _privateConstructorUsedError;
  @JsonKey(name: 'z')
  double? get z => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VolumeModelCopyWith<VolumeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VolumeModelCopyWith<$Res> {
  factory $VolumeModelCopyWith(
          VolumeModel value, $Res Function(VolumeModel) then) =
      _$VolumeModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'x') double? x,
      @JsonKey(name: 'y') double? y,
      @JsonKey(name: 'z') double? z});
}

/// @nodoc
class _$VolumeModelCopyWithImpl<$Res> implements $VolumeModelCopyWith<$Res> {
  _$VolumeModelCopyWithImpl(this._value, this._then);

  final VolumeModel _value;
  // ignore: unused_field
  final $Res Function(VolumeModel) _then;

  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
    Object? z = freezed,
  }) {
    return _then(_value.copyWith(
      x: x == freezed
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double?,
      y: y == freezed
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double?,
      z: z == freezed
          ? _value.z
          : z // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$VolumeModelCopyWith<$Res>
    implements $VolumeModelCopyWith<$Res> {
  factory _$VolumeModelCopyWith(
          _VolumeModel value, $Res Function(_VolumeModel) then) =
      __$VolumeModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'x') double? x,
      @JsonKey(name: 'y') double? y,
      @JsonKey(name: 'z') double? z});
}

/// @nodoc
class __$VolumeModelCopyWithImpl<$Res> extends _$VolumeModelCopyWithImpl<$Res>
    implements _$VolumeModelCopyWith<$Res> {
  __$VolumeModelCopyWithImpl(
      _VolumeModel _value, $Res Function(_VolumeModel) _then)
      : super(_value, (v) => _then(v as _VolumeModel));

  @override
  _VolumeModel get _value => super._value as _VolumeModel;

  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
    Object? z = freezed,
  }) {
    return _then(_VolumeModel(
      x: x == freezed
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double?,
      y: y == freezed
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double?,
      z: z == freezed
          ? _value.z
          : z // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: true)
class _$_VolumeModel extends _VolumeModel {
  const _$_VolumeModel(
      {@JsonKey(name: 'x') this.x,
      @JsonKey(name: 'y') this.y,
      @JsonKey(name: 'z') this.z})
      : super._();

  factory _$_VolumeModel.fromJson(Map<String, dynamic> json) =>
      _$$_VolumeModelFromJson(json);

  @override
  @JsonKey(name: 'x')
  final double? x;
  @override
  @JsonKey(name: 'y')
  final double? y;
  @override
  @JsonKey(name: 'z')
  final double? z;

  @override
  String toString() {
    return 'VolumeModel(x: $x, y: $y, z: $z)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VolumeModel &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.z, z) || other.z == z));
  }

  @override
  int get hashCode => Object.hash(runtimeType, x, y, z);

  @JsonKey(ignore: true)
  @override
  _$VolumeModelCopyWith<_VolumeModel> get copyWith =>
      __$VolumeModelCopyWithImpl<_VolumeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VolumeModelToJson(this);
  }
}

abstract class _VolumeModel extends VolumeModel {
  const factory _VolumeModel(
      {@JsonKey(name: 'x') double? x,
      @JsonKey(name: 'y') double? y,
      @JsonKey(name: 'z') double? z}) = _$_VolumeModel;
  const _VolumeModel._() : super._();

  factory _VolumeModel.fromJson(Map<String, dynamic> json) =
      _$_VolumeModel.fromJson;

  @override
  @JsonKey(name: 'x')
  double? get x;
  @override
  @JsonKey(name: 'y')
  double? get y;
  @override
  @JsonKey(name: 'z')
  double? get z;
  @override
  @JsonKey(ignore: true)
  _$VolumeModelCopyWith<_VolumeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

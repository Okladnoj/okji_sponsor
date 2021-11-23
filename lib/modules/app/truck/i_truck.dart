import 'package:flutter/scheduler.dart';
import 'package:sensors_plus/sensors_plus.dart';

import '../../../services/settings.dart';

import 'domain/truck_api.dart';
import 'models/truck_model.dart';
import 'models/truck_model_ui.dart';
import 'p_truck.dart';
import 's_truck.dart';

class TruckInteractor with BaseInteractor<TruckModelUI> {
  late final TruckPState _state;
  late final TruckApi _api;
  TruckModel _model = TruckModel.empty();
  Ticker? _ticker;

  TruckInteractor(this._state) {
    _init();
  }
  Future<void> _init() async {
    sinkLoading.add(true);
    _api = TruckApi();

    _startListenersOfDevice();
    _startTickerUpdateUI();
    sinkLoading.add(false);
  }

  Future<void> toScreenAddSession() async {
    await _deps?.onSessionAdd();
  }

  void _updateUI() {
    sink.add(_mapToUI());
  }

  TruckModelUI _mapToUI() {
    return TruckModelUI(
      _mapToCurrentPointModelUI(_model.midPoints?.last),
      _mapToListCurrentPointModelUI(_model.midPoints),
    );
  }

  CurrentPointModelUI _mapToCurrentPointModelUI(CurrentPointModel? currentPoint) {
    return CurrentPointModelUI(
      _mapToVolumeModelUI(currentPoint?.accelerometer),
      _mapToVolumeModelUI(currentPoint?.userAccelerometer),
      _mapToVolumeModelUI(currentPoint?.gyroscope),
      _mapToVolumeModelUI(currentPoint?.magnetometer),
    );
  }

  List<CurrentPointModelUI> _mapToListCurrentPointModelUI(List<CurrentPointModel?>? midPoints) {
    return midPoints
            ?.whereType<CurrentPointModel>()
            .map(
              (e) => CurrentPointModelUI(
                _mapToVolumeModelUI(e.accelerometer),
                _mapToVolumeModelUI(e.userAccelerometer),
                _mapToVolumeModelUI(e.gyroscope),
                _mapToVolumeModelUI(e.magnetometer),
              ),
            )
            .toList() ??
        [];
  }

  VolumeModelUI _mapToVolumeModelUI(VolumeModel? v) {
    return VolumeModelUI(
      v?.x ?? 0,
      v?.y ?? 0,
      v?.z ?? 0,
    );
  }

  void _startListenersOfDevice() {
    // [AccelerometerEvent (x: 0.0, y: 9.8, z: 0.0)]
    accelerometerEvents.listen((AccelerometerEvent event) {
      _model = _model.copyWith(
        currentPoint: _model.currentPoint?.copyWith(
          accelerometer: VolumeModel(
            x: event.x,
            y: event.y,
            z: event.z,
          ),
        ),
      );
    });

    // [UserAccelerometerEvent (x: 0.0, y: 0.0, z: 0.0)]
    userAccelerometerEvents.listen((UserAccelerometerEvent event) {
      _model = _model.copyWith(
        currentPoint: _model.currentPoint?.copyWith(
          userAccelerometer: VolumeModel(
            x: event.x,
            y: event.y,
            z: event.z,
          ),
        ),
      );
    });

    // [GyroscopeEvent (x: 0.0, y: 0.0, z: 0.0)]
    gyroscopeEvents.listen((GyroscopeEvent event) {
      _model = _model.copyWith(
        currentPoint: _model.currentPoint?.copyWith(
          gyroscope: VolumeModel(
            x: event.x,
            y: event.y,
            z: event.z,
          ),
        ),
      );
    });

    // [MagnetometerEvent (x: 0.0, y: 0.0, z: 0.0)]
    magnetometerEvents.listen((MagnetometerEvent event) {
      _model = _model.copyWith(
        currentPoint: _model.currentPoint?.copyWith(
          magnetometer: VolumeModel(
            x: event.x,
            y: event.y,
            z: event.z,
          ),
        ),
      );
    });
  }

  int _tic = 0;

  void _startTickerUpdateUI() {
    const stepCalculate = 30;
    _ticker = Ticker((_) {
      _model.currentPoints?.add(_model.currentPoint);
      final isUpdate = (_tic % stepCalculate) == 0;
      if (isUpdate) {
        if (stepCalculate == _tic) {
          _tic = 0;
        }
        final p = _calculateMidPoint(_model.currentPoints);
        if ((_model.midPoints?.length ?? 0) > 5) {
          _model.midPoints?.removeAt(0);
          _model.midPoints?.add(p);
        } else {
          _model.midPoints?.add(p);
        }

        _model.currentPoints?.clear();
        _updateUI();
      }
      _tic++;
    })
      ..start();
  }

  CurrentPointModel _calculateMidPoint(List<CurrentPointModel?>? currentPoints) {
    final _currentPoints = currentPoints?.whereType<CurrentPointModel>().toList() ?? [];
    final accelerometerList = _currentPoints.map((e) => e.accelerometer).whereType<VolumeModel>().toList();
    final userAccelerometerList = _currentPoints.map((e) => e.userAccelerometer).whereType<VolumeModel>().toList();
    final gyroscopeList = _currentPoints.map((e) => e.gyroscope).whereType<VolumeModel>().toList();
    final magnetometerList = _currentPoints.map((e) => e.magnetometer).whereType<VolumeModel>().toList();

    final accelerometer = accelerometerList.fold<VolumeModel>(
      const VolumeModel(x: 0, y: 0, z: 0),
      (p, n) => VolumeModel(
        x: (p.x ?? 0) + (n.x ?? 0),
        y: (p.y ?? 0) + (n.y ?? 0),
        z: (p.z ?? 0) + (n.z ?? 0),
      ),
    );
    final userAccelerometer = userAccelerometerList.fold<VolumeModel>(
      const VolumeModel(x: 0, y: 0, z: 0),
      (p, n) => VolumeModel(
        x: (p.x ?? 0) + (n.x ?? 0),
        y: (p.y ?? 0) + (n.y ?? 0),
        z: (p.z ?? 0) + (n.z ?? 0),
      ),
    );
    final gyroscope = gyroscopeList.fold<VolumeModel>(
      const VolumeModel(x: 0, y: 0, z: 0),
      (p, n) => VolumeModel(
        x: (p.x ?? 0) + (n.x ?? 0),
        y: (p.y ?? 0) + (n.y ?? 0),
        z: (p.z ?? 0) + (n.z ?? 0),
      ),
    );
    final magnetometer = magnetometerList.fold<VolumeModel>(
      const VolumeModel(x: 0, y: 0, z: 0),
      (p, n) => VolumeModel(
        x: (p.x ?? 0) + (n.x ?? 0),
        y: (p.y ?? 0) + (n.y ?? 0),
        z: (p.z ?? 0) + (n.z ?? 0),
      ),
    );
    return CurrentPointModel(
      accelerometer: _calculateMidVolumeModel(accelerometer, accelerometerList.length),
      userAccelerometer: _calculateMidVolumeModel(userAccelerometer, userAccelerometerList.length),
      gyroscope: _calculateMidVolumeModel(gyroscope, gyroscopeList.length),
      magnetometer: _calculateMidVolumeModel(magnetometer, magnetometerList.length),
    );
  }

  VolumeModel _calculateMidVolumeModel(VolumeModel p, int number) {
    return VolumeModel(
      x: (p.x ?? 0) / number,
      y: (p.y ?? 0) / number,
      z: (p.z ?? 0) / number,
    );
  }

  TruckListener? get _deps => _state.context.findAncestorStateOfType<TruckListener>();

  @override
  Future<void> dispose() {
    _ticker?.dispose();
    return super.dispose();
  }
}

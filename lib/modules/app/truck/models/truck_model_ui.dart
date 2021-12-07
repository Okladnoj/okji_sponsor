import 'dart:math';

class TruckModelUI {
  final CurrentPointModelUI currentPoint;
  final List<CurrentPointModelUI> midPoints;

  const TruckModelUI(
    this.currentPoint,
    this.midPoints,
  );
}

class CurrentPointModelUI {
  final VolumeModelUI accelerometer;
  final VolumeModelUI userAccelerometer;
  final VolumeModelUI gyroscope;
  final VolumeModelUI magnetometer;

  const CurrentPointModelUI(
    this.accelerometer,
    this.userAccelerometer,
    this.gyroscope,
    this.magnetometer,
  );
}

class VolumeModelUI {
  final double x;
  final double y;
  final double z;

  const VolumeModelUI(
    this.x,
    this.y,
    this.z,
  );

  double get module {
    return sqrt(pow(x, 2) + pow(y, 2) + pow(z, 2));
  }
}

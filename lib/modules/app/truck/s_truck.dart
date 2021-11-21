import 'package:flutter/cupertino.dart';

import 'models/truck_model_ui.dart';

abstract class TruckListener<T extends StatefulWidget> implements State<T> {
  Future<R?> onSessionOpen<R>(SessionModelUI sessionModelUI);

  Future<R?> onSessionAdd<R>();
}

import 'package:flutter/cupertino.dart';

abstract class HomeListener<T extends StatefulWidget> implements State<T> {
  Future<R?> onNavigateToTruckP<R>();

  Future<R?> onSessionAdd<R>();
}

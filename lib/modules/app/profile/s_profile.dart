import 'package:flutter/cupertino.dart';

abstract class ProfileListener<T extends StatefulWidget> implements State<T> {
  Future<R?> onSaveProfile<R>();

  void onPopProfileP<R>({R? result});
}

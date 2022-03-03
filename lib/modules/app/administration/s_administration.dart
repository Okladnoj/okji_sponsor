import 'package:flutter/cupertino.dart';

abstract class AdministrationListener<T extends StatefulWidget> implements State<T> {
  Future<R?> onSomeMethod<R>();
}

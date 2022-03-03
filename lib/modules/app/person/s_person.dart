import 'package:flutter/cupertino.dart';

abstract class PersonListener<T extends StatefulWidget> implements State<T> {
  Future<R?> onSomeMethod<R>();
}

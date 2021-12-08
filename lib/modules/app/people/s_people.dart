import 'package:flutter/cupertino.dart';

abstract class PeopleListener<T extends StatefulWidget> implements State<T> {
  Future<R?> onSomeMethod<R>();
}

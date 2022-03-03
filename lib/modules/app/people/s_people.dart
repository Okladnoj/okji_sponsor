import 'package:flutter/cupertino.dart';
import 'package:okji_sponsor/modules/app/profile/models/user_model.dart';

abstract class PeopleListener<T extends StatefulWidget> implements State<T> {
  Future<R?> onNavigateToPersonP<R>(UserModel user);
}

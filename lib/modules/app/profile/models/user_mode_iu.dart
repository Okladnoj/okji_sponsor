import 'package:okji_sponsor/modules/app/people/models/people_model.dart';

import 'user_model.dart';

class UserModelUI {
  final String id;
  final UserPropertyUI<String> name;
  final UserPropertyUI<String> age;
  final UserPropertyUI<String> phone;
  final UserPropertyUI<String> email;
  final UserPropertyUI<String> avatar;
  final UserPropertyUI<String> height;
  final UserPropertyUI<String> weight;
  final UserPropertyUI<String> chest;
  final UserPropertyUI<String> waist;
  final UserPropertyUI<String> hip;
  final UserModel? model;

  UserModelUI(
    this.id,
    this.name,
    this.age,
    this.phone,
    this.email,
    this.avatar,
    this.height,
    this.weight,
    this.chest,
    this.waist,
    this.hip,
    this.model,
  );
}

class UserPropertyUI<T> {
  final T value;
  final PeopleType access;

  UserPropertyUI(this.value, this.access);
}

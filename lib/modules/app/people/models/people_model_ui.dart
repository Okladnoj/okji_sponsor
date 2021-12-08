import 'package:okji_sponsor/modules/app/profile/models/user_mode_iu.dart';

enum PeopleType {
  all,
  friend,
  subscribe,
}

class PeopleModelUI {
  final List<UserModelUI> allUsers;
  final List<UserModelUI> friendUsers;
  final List<UserModelUI> subscribeUsers;

  final PeopleType type;

  PeopleModelUI(
    this.allUsers,
    this.friendUsers,
    this.subscribeUsers,
    this.type,
  );

  List<UserModelUI> get users {
    switch (type) {
      case PeopleType.all:
        return allUsers;
      case PeopleType.friend:
        return friendUsers;
      case PeopleType.subscribe:
        return subscribeUsers;
      default:
        return allUsers;
    }
  }
}

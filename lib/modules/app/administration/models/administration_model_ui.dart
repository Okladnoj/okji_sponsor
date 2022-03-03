import 'package:okji_sponsor/modules/app/profile/models/user_mode_iu.dart';

import 'administration_model.dart';

class AdministrationModelUI {
  final List<UserModelUI> blackUsers;
  final List<UserModelUI> friendUsers;
  final List<UserModelUI> subscribeUsers;

  final StatusType type;

  AdministrationModelUI(
    this.blackUsers,
    this.friendUsers,
    this.subscribeUsers,
    this.type,
  );

  List<UserModelUI> get users {
    switch (type) {
      case StatusType.blackList:
        return blackUsers;
      case StatusType.friendList:
        return friendUsers;
      case StatusType.subscribeList:
        return subscribeUsers;
      default:
        return blackUsers;
    }
  }
}

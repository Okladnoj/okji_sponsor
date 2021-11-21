import 'truck_model.dart';

class TruckModelUI {
  final List<SessionModelUI> listSession;

  TruckModelUI(
    this.listSession,
  );
}

class SessionModelUI {
  final String uuid;
  final String name;
  final bool isReady;
  final List<UserModelUI> users;
  final bool protected;
  final String createdAt;
  final String expiredAt;
  final SessionModel? model;

  SessionModelUI(
    this.uuid,
    this.name,
    this.isReady,
    this.users,
    this.protected,
    this.createdAt,
    this.expiredAt,
    this.model,
  );
}

class UserModelUI {
  final String uuid;
  final String name;
  final String email;
  final int scores;
  final String createdAt;
  final UserModel? model;

  UserModelUI(
    this.uuid,
    this.name,
    this.email,
    this.scores,
    this.createdAt,
    this.model,
  );
}

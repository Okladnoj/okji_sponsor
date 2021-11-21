class LoginModelUI {
  final UserModelUI user;
  final String token;
  final bool isConfirm;

  LoginModelUI(
    this.user,
    this.token,
    this.isConfirm,
  );
}

class UserModelUI {
  final String uuid;
  final String kind;
  final String email;
  final String createdAt;

  UserModelUI(
    this.uuid,
    this.kind,
    this.email,
    this.createdAt,
  );
}

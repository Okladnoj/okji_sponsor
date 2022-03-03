import 'dart:convert';

import '../../../services/settings.dart';
import '../../modules/app/profile/models/user_mode_iu.dart';
import '../../modules/app/profile/models/user_model.dart';
import '../../modules/login/s_login.dart';
import '../app/people/models/people_model.dart';
import 'domain/login_api.dart';
import 'p_login.dart';

class LoginInteractor with BaseInteractor<UserModelUI> {
  late final LoginPState _state;
  late final LoginApi _api;
  UserModel _model = const UserModel();

  LoginInteractor(this._state) {
    _init();
  }
  Future<void> _init() async {
    _api = LoginApi();
    _updateUI();
  }

  Future<void> signInWithGoogle() async {
    sinkLoading.add(true);

    try {
      final result = await _api.signInWithGoogle();
      final user = result.user;

      if (user != null) {
        user.uid;
        user.displayName;
        user.email;
        user.photoURL;
        user.phoneNumber;
        _model = _model.copyWith(
          id: user.uid,
          name: UserStringProperty(value: user.displayName, access: PeopleType.all),
          email: UserStringProperty(value: user.email, access: PeopleType.subscribe),
          avatar: UserStringProperty(value: user.photoURL, access: PeopleType.all),
          phone: UserStringProperty(value: user.phoneNumber, access: PeopleType.friend),
          age: const UserIntProperty(access: PeopleType.friend),
          height: const UserIntProperty(access: PeopleType.friend),
          weight: const UserIntProperty(access: PeopleType.friend),
          hip: const UserIntProperty(access: PeopleType.friend),
          waist: const UserIntProperty(access: PeopleType.friend),
          chest: const UserIntProperty(access: PeopleType.friend),
        );
        AppPreference.token = user.uid;
        AppPreference.user = _model;

        final _sUser = jsonEncode(AppPreference.user.toJson());
        await AppPreferences.setString(AppPreferencesString.token, AppPreference.token);
        await AppPreferences.setString(AppPreferencesString.user, _sUser);
        await AppPreferences.setBool(AppPreferencesBool.isLogin, true);
        _deps?.onLoginConfirm();
      } else {
        _state.showErrorMessage(result.toString());
      }
      _updateUI();
    } catch (e) {
      _state.showError(e);
    }
    sinkLoading.add(false);
  }

  void _updateUI() {
    sink.add(_mapToUI());
  }

  UserModelUI _mapToUI() {
    return _model.toUI();
  }

  LoginListener? get _deps => _state.context.findAncestorStateOfType<LoginListener>();
}

import 'dart:async';

import '../../modules/login/s_login.dart';
import '../../../services/settings.dart';

import 'domain/login_api.dart';
import 'models/login_mode_iu.dart';
import 'models/login_model.dart';
import 'p_login.dart';

class LoginInteractor with BaseInteractor<LoginModelUI> {
  late final LoginPState _state;
  late final LoginApi _api;
  LoginModel? _model;
  SinInModel _sinInModel = const SinInModel();

  LoginInteractor(this._state) {
    _init();
  }
  Future<void> _init() async {
    _api = LoginApi();
    _updateUI();
  }

  void onChangeEmail(String email) {
    _sinInModel = _sinInModel.copyWith(email: email);
    _updateUI();
  }

  Future<void> onSingIn() async {
    sinkLoading.add(true);
    LoginModelResponse? result;
    try {
      result = await _api.onSingIn(_sinInModel);

      if (result?.code == 1) {
        AppPreference.token = result?.data?.token ?? '';
        await AppPreferences.setString(AppPreferencesString.token, AppPreference.token);
        await AppPreferences.setBool(AppPreferencesBool.isLogin, true);
        _deps?.onLoginConfirm();
      } else {
        _state.showErrorMessage(result?.message);
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

  LoginModelUI _mapToUI() => LoginModelUI(
        _mapToUserModelUI(_model?.user),
        _model?.token ?? '',
        _sinInModel.email?.isNotEmpty ?? false,
      );

  UserModelUI _mapToUserModelUI(UserModel? user) => UserModelUI(
        user?.uuid ?? '',
        user?.kind ?? '',
        user?.email ?? '',
        user?.createdAt ?? '',
      );

  LoginListener? get _deps => _state.context.findAncestorStateOfType<LoginListener>();
}

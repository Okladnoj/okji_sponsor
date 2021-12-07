import 'package:okji_sponsor/services/settings.dart';

import 'domain/profile_api.dart';
import 'models/user_mode_iu.dart';
import 'models/user_model.dart';
import 'p_profile.dart';
import 's_profile.dart';

class ProfileInteractor with BaseInteractor<UserModelUI> {
  late final ProfilePState _state;
  late final ProfileApi _api = ProfileApi();
  UserModel _model = const UserModel();

  ProfileInteractor(this._state) {
    _init();
  }

  Future<void> _init() async {
    sinkLoading.add(true);
    await _loadData();
    _updateUI();
    sinkLoading.add(false);
  }

  Future<void> _loadData() async {
    final result = await _api.getProfile();
    if (result != null) {
      _model = result;
    }
  }

  Future<void> saveUserModel() async {
    sinkLoading.add(true);
    await _api.saveUserModel(_model);
    _deps?.onPopProfileP();
    sinkLoading.add(false);
  }

  Future<void> onSomeMethod() async {
    await _deps?.onSaveProfile();
  }

  void onChangePhone(String? value) {
    final cleanPhone = Config.phoneMask.unmaskText(value ?? '');
    final t2 = Config.phoneMask.maskText(value ?? '');
    _model = _model.copyWith(phone: cleanPhone);
    _updateUI();
  }

  void onChangeName(String? value) {
    _model = _model.copyWith(name: value);
    _updateUI();
  }

  void onChangeAge(String? value) {
    int? _value;
    if (value != null) {
      _value = int.tryParse(value);
    }
    _model = _model.copyWith(age: _value);
    _updateUI();
  }

  void onChangeWeight(int? value) {
    _model = _model.copyWith(weight: value);
    _updateUI();
  }

  void onChangeHeight(int? value) {
    _model = _model.copyWith(height: value);
    _updateUI();
  }

  void _updateUI() {
    sink.add(_mapToUI());
  }

  UserModelUI _mapToUI() => _model.toUI();

  ProfileListener? get _deps => _state.context.findAncestorStateOfType<ProfileListener>();

  @override
  Future<void> dispose() {
    return super.dispose();
  }
}

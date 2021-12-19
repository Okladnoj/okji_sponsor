import 'package:okji_sponsor/modules/app/people/models/people_model.dart';
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
    _fixInitModel();
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

    _model = _model.copyWith(phone: _model.phone?.copyWith(value: cleanPhone));
    _updateUI();
  }

  void onChangeName(String? value) {
    _model = _model.copyWith(name: _model.name?.copyWith(value: value));
    _updateUI();
  }

  void onChangeAge(String? value) {
    int? _value;
    if (value != null) {
      _value = int.tryParse(value);
    }

    _model = _model.copyWith(age: _model.age?.copyWith(value: _value));
    _updateUI();
  }

  void onChangeWeight(int? value) {
    _model = _model.copyWith(weight: _model.weight?.copyWith(value: value));
    _updateUI();
  }

  void onChangeHeight(int? value) {
    _model = _model.copyWith(height: _model.height?.copyWith(value: value));
    _updateUI();
  }

  void onChangePrivatePhone(PeopleType? value) {
    _model = _model.copyWith(phone: _model.phone?.copyWith(access: value));
    _updateUI();
  }

  void onChangePrivateName(PeopleType? value) {
    _model = _model.copyWith(name: _model.name?.copyWith(access: value));
    _updateUI();
  }

  void onChangePrivateAge(PeopleType? value) {
    _model = _model.copyWith(age: _model.age?.copyWith(access: value));
    _updateUI();
  }

  void onChangePrivateWeight(PeopleType? value) {
    _model = _model.copyWith(weight: _model.weight?.copyWith(access: value));
    _updateUI();
  }

  void onChangePrivateHeight(PeopleType? value) {
    _model = _model.copyWith(height: _model.height?.copyWith(access: value));
    _updateUI();
  }

  void _fixInitModel() {
    if (_model.age == null) {
      _model = _model.copyWith(age: const UserIntProperty());
    }
    if (_model.avatar == null) {
      _model = _model.copyWith(avatar: const UserStringProperty());
    }
    if (_model.chest == null) {
      _model = _model.copyWith(chest: const UserIntProperty());
    }
    if (_model.email == null) {
      _model = _model.copyWith(email: const UserStringProperty());
    }
    if (_model.height == null) {
      _model = _model.copyWith(height: const UserIntProperty());
    }
    if (_model.hip == null) {
      _model = _model.copyWith(hip: const UserIntProperty());
    }
    if (_model.name == null) {
      _model = _model.copyWith(name: const UserStringProperty());
    }
    if (_model.phone == null) {
      _model = _model.copyWith(phone: const UserStringProperty());
    }
    if (_model.waist == null) {
      _model = _model.copyWith(waist: const UserIntProperty());
    }
    if (_model.weight == null) {
      _model = _model.copyWith(weight: const UserIntProperty());
    }
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

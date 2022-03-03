import 'package:okji_sponsor/modules/app/profile/models/user_model.dart';
import 'package:okji_sponsor/services/settings.dart';

import '../profile/domain/profile_api.dart';
import 'domain/person_api.dart';
import 'models/person_model.dart';
import 'models/person_model_ui.dart';
import 'p_person.dart';
import 's_person.dart';

class PersonInteractor with BaseInteractor<PersonModelUI> {
  late final PersonPState _state;
  late final PersonApi _api = PersonApi();
  PersonModelResponse _model = const PersonModelResponse();

  PersonInteractor(this._state) {
    _init();
  }

  Future<void> _init() async {}

  Future<void> onSomeMethod() async {
    await _deps?.onSomeMethod();
  }

  Future<void> setPersonModel(UserModel model) async {
    await Future.value();
    _model = _model.copyWith(user: model);
    _updateUI();
  }

  Future<void> onSubscribe() async {
    sinkLoading.add(true);

    UserModel myProfile = AppPreference.user;
    UserModel? userProfile = _model.user;
    final idUser = userProfile?.id;
    if (idUser != null) {
      myProfile = myProfile.copyWith(subscribes: {idUser, ...myProfile.subscribes ?? {}});
    }
    final idMy = myProfile.id;
    if (idMy != null) {
      userProfile = userProfile?.copyWith(subscribes: {idMy, ...userProfile.subscribes ?? {}});
    }

    await _api.updateUsers([userProfile].whereType<UserModel>().toList());
    ProfileApi().saveUserModel(myProfile);
    AppPreference.user = myProfile;
    sinkLoading.add(false);
  }

  void _updateUI() {
    sink.add(_mapToUI());
  }

  PersonModelUI _mapToUI() => PersonModelUI(
        (_model.user ?? const UserModel()).toUI(),
        _model.user,
      );

  PersonListener? get _deps => _state.context.findAncestorStateOfType<PersonListener>();

  @override
  Future<void> dispose() {
    return super.dispose();
  }
}

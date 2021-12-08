import 'package:okji_sponsor/modules/app/profile/models/user_model.dart';

import '../../../services/settings.dart';

import 'domain/home_api.dart';
import 'models/home_model_ui.dart';
import 'p_home.dart';
import 's_home.dart';

class HomeInteractor with BaseInteractor<HomeModelUI> {
  late final HomePState _state;
  final HomeApi _api = HomeApi();
  UserModel _model = const UserModel();

  HomeInteractor(this._state) {
    _init();
  }

  Future<void> _init() async {
    sinkLoading.add(true);
    final result = await _api.updateUser(AppPreference.user);
    final user = result?.user;
    if (user != null) {
      _model = await Future.value(user);
    }

    _updateUI();
    sinkLoading.add(false);
  }

  Future<void> onNavigateToTruckP() async {
    await _deps?.onNavigateToTruckP();
  }

  Future<void> onNavigateToPeopleP() async {
    await _deps?.onNavigateToPeopleP();
  }

  Future<void> onNavigateToMapP() async {
    await _deps?.onNavigateToMapP();
  }

  Future<void> onEditProfile() async {
    await _deps?.onEditProfile();
    _model = AppPreference.user;
    _updateUI();
  }

  void _updateUI() {
    sink.add(_mapToUI());
  }

  HomeModelUI _mapToUI() => HomeModelUI(
        _model.toUI(),
        _model,
      );

  HomeListener? get _deps => _state.context.findAncestorStateOfType<HomeListener>();

  @override
  Future<void> dispose() {
    return super.dispose();
  }
}

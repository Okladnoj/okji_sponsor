import 'package:okji_sponsor/modules/app/profile/models/user_model.dart';
import 'package:okji_sponsor/services/settings.dart';

import 'domain/administration_api.dart';
import 'models/administration_model.dart';
import 'models/administration_model_ui.dart';
import 'p_administration.dart';
import 's_administration.dart';

class AdministrationInteractor with BaseInteractor<AdministrationModelUI> {
  late final AdministrationPState _state;
  final AdministrationApi _api = AdministrationApi();
  AdministrationModelResponse _model = const AdministrationModelResponse();

  AdministrationInteractor(this._state) {
    _init();
  }

  Future<void> _init() async {
    sinkLoading.add(true);
    await _loadBlackList();
    await _loadFriends();
    await _loadSubscribes();
    _updateUI();
    sinkLoading.add(false);
  }

  Future<void> _loadBlackList() async {
    final blackList = AppPreference.user.blackList?.toSet() ?? {};
    final result = await _api.loadBlackList(blackList);
    _model = _model.copyWith(blackUsers: result);
  }

  Future<void> _loadFriends() async {
    final friendsRequest = AppPreference.user.friendsRequest?.toSet() ?? {};
    final result = await _api.getFriends(friendsRequest);
    _model = _model.copyWith(friendUsers: result);
  }

  Future<void> _loadSubscribes() async {
    final subscribesRequest = AppPreference.user.subscribesRequest?.toSet() ?? {};
    final result = await _api.getSubscribes(subscribesRequest);
    _model = _model.copyWith(subscribeUsers: result);
  }

  Future<void> onSomeMethod() async {
    await _deps?.onSomeMethod();
  }

  void onChangeUsersSet(StatusType type) {
    _model = _model.copyWith(type: type);
    _updateUI();
  }

  void _updateUI() {
    sink.add(_mapToUI());
  }

  AdministrationModelUI _mapToUI() => AdministrationModelUI(
        _model.blackUsers?.map((e) => e.toUI()).toList() ?? [],
        _model.friendUsers?.map((e) => e.toUI()).toList() ?? [],
        _model.subscribeUsers?.map((e) => e.toUI()).toList() ?? [],
        _model.type ?? StatusType.friendList,
      );

  AdministrationListener? get _deps => _state.context.findAncestorStateOfType<AdministrationListener>();

  @override
  Future<void> dispose() {
    return super.dispose();
  }
}

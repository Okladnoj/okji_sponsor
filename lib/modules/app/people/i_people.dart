import 'package:okji_sponsor/modules/app/profile/models/user_model.dart';
import 'package:okji_sponsor/services/settings.dart';

import 'domain/people_api.dart';
import 'models/people_model.dart';
import 'models/people_model_ui.dart';
import 'p_people.dart';
import 's_people.dart';

class PeopleInteractor with BaseInteractor<PeopleModelUI> {
  late final PeoplePState _state;
  final PeopleApi _api = PeopleApi();
  PeopleModelResponse _model = const PeopleModelResponse(type: PeopleType.all);

  PeopleInteractor(this._state) {
    _init();
  }

  Future<void> _init() async {
    sinkLoading.add(true);

    await _loadPeople();
    await _loadFriends();
    await _loadSubscribes();
    _updateUI();
    sinkLoading.add(false);
  }

  Future<void> _loadPeople() async {
    final result = await _api.getPeople();
    _model = _model.copyWith(allUsers: result);
  }

  Future<void> _loadFriends() async {
    final friends = AppPreference.user.friends?.toSet() ?? {};
    final result = await _api.getFriends(friends);
    _model = _model.copyWith(friendUsers: result);
  }

  Future<void> _loadSubscribes() async {
    final subscribes = AppPreference.user.subscribes?.toSet() ?? {};
    final result = await _api.getSubscribes(subscribes);
    _model = _model.copyWith(subscribeUsers: result);
  }

  Future<void> onSomeMethod() async {
    await _deps?.onSomeMethod();
  }

  void onChangeUsersSet(PeopleType type) {
    _model = _model.copyWith(type: type);
    _updateUI();
  }

  void _updateUI() {
    sink.add(_mapToUI());
  }

  PeopleModelUI _mapToUI() {
    return PeopleModelUI(
      _model.allUsers?.map((e) => e.toUI()).toList() ?? [],
      _model.friendUsers?.map((e) => e.toUI()).toList() ?? [],
      _model.subscribeUsers?.map((e) => e.toUI()).toList() ?? [],
      _model.type ?? PeopleType.all,
    );
  }

  PeopleListener? get _deps => _state.context.findAncestorStateOfType<PeopleListener>();

  @override
  Future<void> dispose() {
    return super.dispose();
  }
}

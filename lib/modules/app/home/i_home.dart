import 'package:intl/intl.dart';
import 'package:okji_sponsor/models/user/login_mode_iu.dart';
import 'package:okji_sponsor/services/localization/app_localization.dart';

import '../../../services/settings.dart';

import 'domain/home_api.dart';
import 'models/home_model.dart';
import 'models/home_model_ui.dart';
import 'p_home.dart';
import 's_home.dart';

class HomeInteractor with BaseInteractor<HomeModelUI> {
  late final HomePState _state;
  late final HomeApi _api;
  HomeModelResponse _model = const HomeModelResponse();

  HomeInteractor(this._state) {
    _init();
  }

  Future<void> _init() async {
    sinkLoading.add(true);
    _api = HomeApi();
    _model = await Future.value(_model);
    _updateUI();
    sinkLoading.add(false);
  }

  Future<void> onNavigateToTruckP() async {
    await _deps?.onNavigateToTruckP();
    print('onNavigateToTruckP');
  }

  void _updateUI() {
    sink.add(_mapToUI());
  }

  HomeModelUI _mapToUI() => HomeModelUI(
        UserModelUI(
          AppPreference.user.uid ?? '',
          AppPreference.user.displayName ?? Strings.text.nA,
          AppPreference.user.email ?? Strings.text.notEmail,
          AppPreference.user.photoURL ?? '',
          AppPreference.user.phoneNumber ?? Strings.text.notPhone,
        ),
        _model.user,
      );

  String _formatDateTime(DateTime? date) {
    if (date != null) {
      return _f.format(date);
    } else {
      return 'Нет даты';
    }
  }

  String _formatDateTimeToLast(DateTime? date) {
    if (date != null) {
      final d = DateTime.now();
      final duration = date.difference(d);
      if (duration.inSeconds > 0) {
        return '0';
      }
      return _f.format(DateTime(0, 0, 0).add(duration));
    } else {
      return 'Нет даты';
    }
  }

  final _f = DateFormat('m:ss');

  HomeListener? get _deps => _state.context.findAncestorStateOfType<HomeListener>();

  @override
  Future<void> dispose() {
    return super.dispose();
  }
}

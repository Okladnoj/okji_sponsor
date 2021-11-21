import 'package:intl/intl.dart';

import '../../../services/settings.dart';

import 'domain/truck_api.dart';
import 'models/truck_model.dart';
import 'models/truck_model_ui.dart';
import 'p_truck.dart';
import 's_truck.dart';

class TruckInteractor with BaseInteractor<TruckModelUI> {
  late final TruckPState _state;
  late final TruckApi _api;
  TruckModelResponse? _model;
  Timer? _timer;

  TruckInteractor(this._state) {
    _init();
  }
  Future<void> _init() async {
    sinkLoading.add(true);
    _api = TruckApi();
    await getTruck();
    _updateUI();
    sinkLoading.add(false);
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      try {
        _model = _model?.copyWith(
            listSession: _model?.listSession?.whereType<SessionModel>().map((e) {
                  return e.copyWith(
                    expiredAt: e.expiredAt?.add(
                      const Duration(seconds: -1),
                    ),
                  );
                }).toList() ??
                []);
        _updateUI();
      } catch (e) {
        print(e);
      }
    });
  }

  Future<void> getTruck() async {
    try {
      _model = await _api.getTruck();
      if ((_model?.code ?? 2) != 1) {
        _state.showErrorMessage(_model?.message);
        return;
      }

      _updateUI();
    } catch (e) {
      _state.showError(e);
    }
  }

  Future<void> toScreenAddSession() async {
    await _deps?.onSessionAdd();
    await getTruck();
  }

  Future<void> openTruck(SessionModelUI sessionModelUI) async {
    sinkLoading.add(true);

    sinkLoading.add(false);
  }

  void _updateUI() {
    sink.add(_mapToUI());
  }

  TruckModelUI _mapToUI() => TruckModelUI(_model?.listSession
          ?.whereType<SessionModel>()
          .map(
            (e) => _mapToSessionModel(e),
          )
          .toList() ??
      []);

  SessionModelUI _mapToSessionModel(SessionModel? session) => SessionModelUI(
        session?.uuid ?? '',
        session?.name ?? '',
        session?.status == 'ready',
        _mapToListUserModelUI(session?.users),
        session?.protected ?? false,
        _formatDateTime(session?.createdAt),
        _formatDateTimeToLast(session?.expiredAt),
        session,
      );

  List<UserModelUI> _mapToListUserModelUI(List<UserModel?>? users) =>
      users
          ?.whereType<UserModel>()
          .map((e) => UserModelUI(
                e.uuid ?? '',
                e.name ?? '',
                e.email ?? '',
                e.scores ?? 0,
                e.createdAt ?? '',
                e,
              ))
          .toList() ??
      [];

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

  TruckListener? get _deps => _state.context.findAncestorStateOfType<TruckListener>();

  @override
  Future<void> dispose() {
    _timer?.cancel();
    return super.dispose();
  }
}

import '../../services/settings.dart';
import 'truck/models/truck_model_ui.dart';
import 'truck/p_truck.dart';
import 'truck/s_truck.dart';

class FollowControllerApp extends StatefulWidget {
  static const id = 'FollowControllerApp';
  const FollowControllerApp({Key? key}) : super(key: key);

  @override
  _FollowControllerAppState createState() => _FollowControllerAppState();
}

class _FollowControllerAppState extends BaseFlowControllerState<FollowControllerApp>
    implements TruckListener<FollowControllerApp> {
  @override
  @override
  AppPage createInitialPage() {
    return const AppPage(TruckP.id, TruckP());
  }

  @override
  Future<R?> onSessionOpen<R>(SessionModelUI sessionModelUI) async {}

  @override
  Future<R?> onSessionAdd<R>() async {}
}

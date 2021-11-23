import 'package:okji_sponsor/modules/app/truck/p_truck.dart';

import '../../services/settings.dart';
import 'home/p_home.dart';
import 'home/s_home.dart';

class FollowControllerApp extends StatefulWidget {
  static const id = 'FollowControllerApp';
  const FollowControllerApp({Key? key}) : super(key: key);

  @override
  _FollowControllerAppState createState() => _FollowControllerAppState();
}

class _FollowControllerAppState extends BaseFlowControllerState<FollowControllerApp>
    implements HomeListener<FollowControllerApp> {
  @override
  @override
  AppPage createInitialPage() {
    return const AppPage(HomeP.id, HomeP());
  }

  @override
  Future<R?> onNavigateToTruckP<R>() async {
    await pushSimple(() => const TruckP(), name: TruckP.id);
  }

  @override
  Future<R?> onSessionAdd<R>() async {}
}

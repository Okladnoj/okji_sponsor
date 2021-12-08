import 'package:okji_sponsor/modules/app/profile/p_profile.dart';
import 'package:okji_sponsor/modules/app/truck/p_truck.dart';

import '../../services/settings.dart';
import 'home/p_home.dart';
import 'home/s_home.dart';
import 'people/p_people.dart';
import 'profile/s_profile.dart';

class FollowControllerApp extends StatefulWidget {
  static const id = 'FollowControllerApp';
  const FollowControllerApp({Key? key}) : super(key: key);

  @override
  _FollowControllerAppState createState() => _FollowControllerAppState();
}

class _FollowControllerAppState extends BaseFlowControllerState<FollowControllerApp>
    implements //
        HomeListener<FollowControllerApp>,
        ProfileListener<FollowControllerApp> {
  @override
  @override
  AppPage createInitialPage() {
    return const AppPage(HomeP.id, HomeP());
  }

  @override
  Future<R?> onNavigateToTruckP<R>() async {
    return await pushSimple<R>(() => const TruckP(), name: TruckP.id);
  }

  @override
  Future<R?> onNavigateToMapP<R>() async {}

  @override
  Future<R?> onSaveProfile<R>() async {}

  @override
  Future<R?> onEditProfile<R>() async {
    return await pushSimple<R>(() => const ProfileP(), name: ProfileP.id);
  }

  @override
  void onPopProfileP<R>({R? result}) {
    pop<R>(result: result);
  }

  @override
  Future<R?> onNavigateToPeopleP<R>() async {
    return await pushSimple<R>(() => const PeopleP(), name: PeopleP.id);
  }
}

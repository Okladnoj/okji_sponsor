import '../../../services/settings.dart';
import 'components/w_home_drawer.dart';
import 'components/w_home_title.dart';
import 'components/w_user_avatar.dart';
import 'i_home.dart';
import 'models/home_model_ui.dart';

class HomeP extends StatefulWidget {
  static const id = 'HomeP';
  const HomeP({Key? key}) : super(key: key);

  @override
  HomePState createState() => HomePState();
}

class HomePState extends State<HomeP> with ErrorHandlerState {
  HomeModelUI? _modelUI;
  late final HomeInteractor _interactor;

  @override
  void initState() {
    _interactor = HomeInteractor(this);
    super.initState();
  }

  @override
  void dispose() {
    _interactor.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<HomeModelUI>(
      stream: _interactor.observer,
      builder: (context, s) {
        _modelUI = s.data ?? _modelUI;
        return ScreenFormer(
          streamLoadingStatus: _interactor.observerLoading,
          titleActions: _buildTitle(),
          drawer: HomeDrawerW(
            key: Key(Strings.locale.languageCode),
          ),
          children: [
            _buildUserInfo(),
            _buildButtonNavigateToTruck(),
          ],
        );
      },
    );
  }

  Widget _buildTitle() {
    return HomeTitle(nameTitle: Strings.text.homePage);
  }

  Widget _buildUserInfo() {
    final user = _modelUI?.user;
    if (user != null) {
      return UserAvatarW(user: user);
    } else {
      return const SizedBox.shrink();
    }
  }

  Widget _buildButtonNavigateToTruck() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: InkCustomSimple(
        onTap: _interactor.onNavigateToTruckP,
        child: Container(
          alignment: const Alignment(0, 0),
          padding: const EdgeInsets.symmetric(vertical: 5),
          decoration: DesignStyles.buttonDecoration(
            blurRadius: 10,
            borderRadius: 10,
            offset: const Offset(0, 2),
            colorBoxShadow: DesignStyles.colorDark,
            color: DesignStyles.colorDark,
          ),
          child: Text(
            Strings.text.workout,
            style: DesignStyles.textCustom(
              fontSize: 24,
              color: DesignStyles.colorLight,
            ),
          ),
        ),
      ),
    );
  }
}

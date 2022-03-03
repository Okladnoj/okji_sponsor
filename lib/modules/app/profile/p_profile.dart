import 'package:okji_sponsor/services/settings.dart';

import 'i_profile.dart';
import 'models/user_mode_iu.dart';
import 'widgets/w_input_avatar.dart';
import 'widgets/w_input_hight.dart';
import 'widgets/w_input_name.dart';
import 'widgets/w_input_phone.dart';
import 'widgets/w_input_weight.dart';

class ProfileP extends StatefulWidget {
  static const id = 'ProfileP';
  const ProfileP({Key? key}) : super(key: key);

  @override
  ProfilePState createState() => ProfilePState();
}

class ProfilePState extends State<ProfileP> with ErrorHandlerState {
  UserModelUI? _modelUI;
  late final ProfileInteractor _interactor;

  @override
  void initState() {
    _interactor = ProfileInteractor(this);
    super.initState();
  }

  @override
  void dispose() {
    _interactor.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<UserModelUI>(
      stream: _interactor.observer,
      builder: (context, s) {
        _modelUI = s.data ?? _modelUI;
        return ScreenFormer(
          streamLoadingStatus: _interactor.observerLoading,
          floatingButton: _buildButtonSaveUserModel(),
          titleActions: _buildTitle(),
          children: [
            _buildContent(),
          ],
        );
      },
    );
  }

  Widget _buildTitle() {
    return TitleForm(
      nameTitle: Strings.text.profileSetting,
      typeBackAction: TypeBackAction.close,
    );
  }

  Widget _buildContent() {
    if (_modelUI == null) {
      return const SizedBox.shrink();
    }
    return Column(
      children: [
        InputAvatarW(
          interactor: _interactor,
          modelUI: _modelUI!,
        ),
        InputNameW(
          interactor: _interactor,
          modelUI: _modelUI!,
        ),
        InputPhoneW(
          interactor: _interactor,
          modelUI: _modelUI!,
        ),
        InputHeightW(
          interactor: _interactor,
          modelUI: _modelUI!,
        ),
        InputWeightW(
          interactor: _interactor,
          modelUI: _modelUI!,
        ),
      ],
    );
  }

  Widget _buildButtonSaveUserModel() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: InkCustomSimple(
        onTap: _interactor.saveUserModel,
        child: Container(
          alignment: const Alignment(0, 0),
          padding: const EdgeInsets.symmetric(vertical: 5),
          decoration: DesignStyles.buttonDecoration(
            blurRadius: 10,
            borderRadius: 10,
            offset: const Offset(0, 2),
            colorBorder: DesignStyles.colorVariate,
            colorBoxShadow: DesignStyles.colorDark,
            color: DesignStyles.colorDark,
          ),
          child: Text(
            Strings.text.updateProfile,
            style: DesignStyles.textCustom(
              fontSize: 24,
              fontWeight: FontWeight.w900,
              color: DesignStyles.colorVariate,
            ),
          ),
        ),
      ),
    );
  }
}

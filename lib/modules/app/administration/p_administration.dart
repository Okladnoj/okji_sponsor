import 'package:okji_sponsor/services/settings.dart';

import 'i_administration.dart';
import 'models/administration_model.dart';
import 'models/administration_model_ui.dart';
import 'widgets/w_user_avatar.dart';

class AdministrationP extends StatefulWidget {
  static const id = 'AdministrationP';
  const AdministrationP({Key? key}) : super(key: key);

  @override
  AdministrationPState createState() => AdministrationPState();
}

class AdministrationPState extends State<AdministrationP> with ErrorHandlerState {
  AdministrationModelUI? _modelUI;
  late final AdministrationInteractor _interactor;

  @override
  void initState() {
    _interactor = AdministrationInteractor(this);
    super.initState();
  }

  @override
  void dispose() {
    _interactor.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<AdministrationModelUI>(
      stream: _interactor.observer,
      builder: (context, s) {
        _modelUI = s.data ?? _modelUI;
        return ScreenFormer(
          streamLoadingStatus: _interactor.observerLoading,
          titleActions: _buildTitle(),
          floatingButton: _buildTapBar(),
          isUpFloatingButton: true,
          children: [
            _buildContent(),
          ],
        );
      },
    );
  }

  Widget _buildTapBar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      decoration: DesignStyles.buttonDecoration(
        blurRadius: 5,
        colorBoxShadow: DesignStyles.black,
      ),
      child: Row(
        children: [
          _buildTabButton(Strings.text.friend, StatusType.friendList),
          _buildTabButton(Strings.text.subscribe, StatusType.subscribeList),
          _buildTabButton(Strings.text.blackList, StatusType.blackList),
        ],
      ),
    );
  }

  Expanded _buildTabButton(String label, StatusType type) {
    final isEnable = _modelUI?.type == type;
    return Expanded(
      child: InkCustomSimple(
        onTap: () {
          _interactor.onChangeUsersSet(type);
        },
        child: Container(
          height: 50,
          alignment: const Alignment(0, 0),
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: DesignStyles.buttonDecoration(
            color: isEnable ? DesignStyles.colorDark : DesignStyles.colorMiddle,
          ),
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: DesignStyles.textCustom(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: DesignStyles.colorLight,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return TitleForm(
      nameTitle: Strings.text.peopleRequest,
      typeBackAction: TypeBackAction.close,
    );
  }

  Widget _buildContent() {
    final modelUI = _modelUI;
    if (modelUI == null) {
      return const SizedBox.shrink();
    }
    if (modelUI.users.isEmpty) {
      return Column(
        children: [
          const SizedBox(height: 100),
          Text(
            Strings.text.emptyList,
            style: DesignStyles.textCustom(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: DesignStyles.colorDark,
            ),
          ),
        ],
      );
    }
    final List<Widget> children = modelUI.users.map((e) {
      return PersonAvatarW(user: e);
    }).toList();
    return Column(
      children: [
        const SizedBox(height: 65),
        ...children,
      ],
    );
  }
}

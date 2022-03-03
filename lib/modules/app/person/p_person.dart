import 'package:cached_network_image/cached_network_image.dart';
import 'package:okji_sponsor/modules/app/people/models/people_model.dart';
import 'package:okji_sponsor/modules/app/person/widgets/w_user_field.dart';
import 'package:okji_sponsor/modules/app/profile/models/user_model.dart';
import 'package:okji_sponsor/services/settings.dart';

import '../profile/models/user_mode_iu.dart';
import 'i_person.dart';
import 'models/person_model_ui.dart';

class PersonP extends StatefulWidget {
  static const id = 'PersonP';
  final UserModel user;
  const PersonP({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  PersonPState createState() => PersonPState();
}

class PersonPState extends State<PersonP> with ErrorHandlerState {
  PersonModelUI? _modelUI;
  late final PersonInteractor _interactor;

  @override
  void initState() {
    _interactor = PersonInteractor(this);
    _interactor.setPersonModel(widget.user);
    super.initState();
  }

  @override
  void dispose() {
    _interactor.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<PersonModelUI>(
      stream: _interactor.observer,
      builder: (context, s) {
        _modelUI = s.data ?? _modelUI;
        return ScreenFormer(
          streamLoadingStatus: _interactor.observerLoading,
          titleActions: _buildTitle(),
          children: [
            _buildContent(),
          ],
        );
      },
    );
  }

  Widget _buildTitle() {
    String title = '';
    final isTitle = _modelUI?.user.name.access ?? PeopleType.none;
    if (isTitle != PeopleType.none) {
      title = _modelUI?.user.name.value ?? '';
    }
    return TitleForm(
      nameTitle: title,
      typeBackAction: TypeBackAction.back,
    );
  }

  Widget _buildContent() {
    final user = _modelUI?.user;
    if (user == null) {
      return const SizedBox.shrink();
    }
    return Column(
      children: [
        _buildAvatar(user),
        _buildAddToFriends(),
        UserFieldW(
          id: user.id,
          title: Strings.text.emailTitle,
          property: user.email,
        ),
        UserFieldW(
          id: user.id,
          title: Strings.text.phoneTitle,
          property: user.phone,
        ),
        UserFieldW(
          id: user.id,
          title: Strings.text.weightTitle,
          property: user.weight,
        ),
        UserFieldW(
          id: user.id,
          title: Strings.text.heightTitle,
          property: user.height,
        ),
      ],
    );
  }

  Widget _buildAvatar(UserModelUI user) {
    const double _padding = 10;
    final wight = MediaQuery.of(context).size.width - (_padding * 2);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: _padding),
      child: Row(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.elliptical(wight / 2, wight / 5),
                bottomRight: Radius.elliptical(wight / 2, wight / 5),
              ),
              child: CachedNetworkImage(
                imageUrl: user.avatar.value,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAddToFriends() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Transform(
        transform: Matrix4(
          ///
          1, // масштаб по оси X
          0,
          0,
          0.00001, // объемная деформация по оси X

          ///
          0,
          1, // масштаб по оси Y
          0,
          0.005, // объемная деформация по оси Y

          ///
          0,
          0,
          1, // масштаб по оси Z
          0.0, // объемная деформация по оси Z

          ///
          0, // смещение по оси X
          0, // смещение по оси Y
          0, // смещение по оси Z
          1, // равномерный масштаб по всем осям в обратной пропорции [1/SF]
        ),
        alignment: FractionalOffset.center,
        child: InkCustomSimple(
          borderRadius: BorderRadius.circular(25),
          onTap: () async {
            await _interactor.onSubscribe();
          },
          child: Container(
            height: 50,
            decoration: DesignStyles.buttonDecoration(
              color: DesignStyles.colorVariateDark,
              colorBorder: DesignStyles.colorDark,
              borderRadius: 25,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    Strings.text.onSubscribe,
                    textAlign: TextAlign.center,
                    style: DesignStyles.textCustom(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: DesignStyles.colorLight,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

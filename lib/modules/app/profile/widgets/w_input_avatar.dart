import 'package:okji_sponsor/services/settings.dart';

import '../i_profile.dart';
import '../models/user_mode_iu.dart';
import 'w_private_sessings.dart';

class InputAvatarW extends StatefulWidget {
  const InputAvatarW({
    Key? key,
    required this.interactor,
    required this.modelUI,
  }) : super(key: key);

  final ProfileInteractor interactor;
  final UserModelUI modelUI;

  @override
  _InputAvatarWState createState() => _InputAvatarWState();
}

class _InputAvatarWState extends State<InputAvatarW> {
  final _controller = TextEditingController();
  late UserModelUI _modelUI;
  @override
  void initState() {
    _modelUI = widget.modelUI;
    _controller.text = widget.modelUI.avatar.value;
    _addListeners();
    super.initState();
  }

  void _addListeners() {
    _controller.addListener(() {
      widget.interactor.onChangeName(_controller.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Stack(
        alignment: const Alignment(1, -1),
        children: [
          Container(
            alignment: const Alignment(0, 0),
            padding: const EdgeInsets.all(5),
            decoration: DesignStyles.buttonDecoration(
              blurRadius: _borderRadius,
              borderRadius: _borderRadius,
              offset: const Offset(0, 2),
              colorBoxShadow: DesignStyles.colorDark,
              color: DesignStyles.colorDark,
              colorBorder: DesignStyles.colorDark,
            ),
            child: Column(
              children: [
                _buildTitle(),
                _buildTextField(),
              ],
            ),
          ),
          StreamBuilder<UserModelUI>(
            stream: widget.interactor.observer,
            builder: (context, s) {
              _modelUI = s.data ?? _modelUI;
              return PrivateSettings(
                onSelected: (_) {
                  widget.interactor.onChangePrivateAvatar(_);
                },
                initValue: _modelUI.avatar.access,
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return Row(
      children: [
        Expanded(
          child: Text(
            Strings.text.avatarTitle,
            style: DesignStyles.textCustom(
              fontSize: 18,
              color: DesignStyles.colorLight,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTextField() {
    return Row(
      children: [
        Expanded(
          child: InkCustomSimple(
            onTap: () {},
            child: TextFormField(
              controller: _controller,
              textAlign: TextAlign.center,
              textAlignVertical: TextAlignVertical.top,
              style: DesignStyles.textCustom(
                fontSize: 22,
                fontWeight: FontWeight.w800,
                color: DesignStyles.colorLight,
              ),
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                hintStyle: DesignStyles.textCustom(
                  fontSize: 22,
                  color: DesignStyles.colorMiddle,
                ),
                fillColor: DesignStyles.colorMiddle,
                contentPadding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(_borderRadius),
                  borderSide: BorderSide(
                    color: DesignStyles.colorLight,
                    width: 1.5,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(_borderRadius),
                  borderSide: BorderSide(
                    color: DesignStyles.colorMiddle,
                  ),
                ),
                suffix: IconButton(
                  onPressed: _controller.clear,
                  icon: Icon(
                    Icons.clear,
                    color: DesignStyles.colorLight,
                  ),
                ),
                hintText: Strings.text.nameHint,
              ),
            ),
          ),
        ),
      ],
    );
  }

  static const double _borderRadius = 15;
}

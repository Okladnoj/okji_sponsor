import 'package:okji_sponsor/services/settings.dart';

import '../i_profile.dart';

class InputPhoneW extends StatefulWidget {
  const InputPhoneW({
    Key? key,
    required this.interactor,
    required this.initValue,
  }) : super(key: key);

  final ProfileInteractor interactor;
  final String initValue;

  @override
  _InputPhoneWState createState() => _InputPhoneWState();
}

class _InputPhoneWState extends State<InputPhoneW> {
  final _controller = TextEditingController();

  @override
  void initState() {
    Config.phoneMask.clear();
    Config.phoneMask.formatEditUpdate(
      const TextEditingValue(),
      TextEditingValue(text: widget.initValue),
    );
    _controller.text = Config.phoneMask.maskText(widget.initValue);
    _addListeners();
    super.initState();
  }

  void _addListeners() {
    _controller.addListener(() {
      widget.interactor.onChangePhone(_controller.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Container(
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
    );
  }

  Widget _buildTitle() {
    return Row(
      children: [
        Expanded(
          child: Text(
            Strings.text.phoneTitle,
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
          child: TextFormField(
            controller: _controller,
            textAlign: TextAlign.center,
            textAlignVertical: TextAlignVertical.top,
            style: DesignStyles.textCustom(
              fontSize: 22,
              fontWeight: FontWeight.w800,
              color: DesignStyles.colorLight,
            ),
            keyboardType: TextInputType.phone,
            inputFormatters: [Config.phoneMask],
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
              hintText: Strings.text.phoneHint,
            ),
          ),
        ),
      ],
    );
  }

  static const double _borderRadius = 15;
}

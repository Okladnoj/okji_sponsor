import '../../../services/settings.dart';

import 'i_login.dart';
import 'models/login_mode_iu.dart';

class LoginP extends StatefulWidget {
  static const id = 'LoginP';

  const LoginP({
    Key? key,
  }) : super(key: key);

  @override
  LoginPState createState() => LoginPState();
}

class LoginPState extends State<LoginP> with ErrorHandlerState {
  LoginModelUI? _modelUI;
  late final LoginInteractor _interactor;
  late final TextEditingController? _controller;

  @override
  void initState() {
    _interactor = LoginInteractor(this);
    _controller = TextEditingController();
    _addListeners();
    super.initState();
  }

  void _addListeners() {
    _controller?.addListener(() {
      _interactor.onChangeEmail(_controller?.text ?? '');
    });
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<LoginModelUI>(
        stream: _interactor.observer,
        builder: (context, s) {
          _modelUI = s.data ?? _modelUI;
          return ScreenFormer(
            streamLoadingStatus: _interactor.observerLoading,
            titleActions: _buildTitle(),
            floatingButton: _buildButtonSendReport(),
            children: [
              _buildLogo(),
              _buildEmailInput(),
            ],
          );
        });
  }

  Widget _buildTitle() {
    return TitleForm(nameTitle: Strings.text.login);
  }

  Widget _buildLogo() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Image.asset('assets/images/logo.png'),
    );
  }

  Widget _buildEmailInput() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: TextFormDesign(
        controller: _controller,
        hintText: 'your_email@site.com',
        labelText: Strings.text.inputEmail,
      ),
    );
  }

  Widget _buildButtonSendReport() {
    final isSave = _modelUI?.isConfirm ?? false;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: InkCustomSimple(
        onTap: isSave ? () => _interactor.onSingIn() : null,
        child: Container(
          alignment: const Alignment(0, 0),
          padding: const EdgeInsets.symmetric(vertical: 5),
          decoration: DesignStyles.buttonDecoration(
            blurRadius: 10,
            borderRadius: 10,
            offset: const Offset(0, 2),
            colorBoxShadow: isSave ? DesignStyles.colorDark : DesignStyles.colorMiddle,
            color: isSave ? DesignStyles.colorDark : DesignStyles.colorMiddle,
          ),
          child: Text(
            Strings.text.input,
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

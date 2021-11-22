import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

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
          children: [
            _buildLogo(),
            _buildButtonSendReport(),
          ],
        );
      },
    );
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

  Widget _buildButtonSendReport() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SignInButton(
        Buttons.Google,
        elevation: 5,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.blue.shade900, width: 0.5),
          borderRadius: BorderRadius.circular(10),
        ),
        text: Strings.text.singInGoogle,
        onPressed: _interactor.signInWithGoogle,
        padding: const EdgeInsets.symmetric(vertical: 5),
      ),
    );
  }
}

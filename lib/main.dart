import 'modules/follow_root.dart';
import 'services/localization/localization_builder.dart';
import 'services/settings.dart';

Future<void> main() async {
  await AppInit.init();
  runApp(LocaleBuilder(builder: (_, __) => TapTap()));
}

class TapTap extends MaterialApp {
  TapTap({Key? key})
      : super(
          key: key,
          navigatorObservers: [
            // FirebaseAnalyticsObserver(analytics: AnalyticAppEvents.getInstance),
          ],
          title: 'Run Earn',
          navigatorKey: DesignStyles.navigatorKey,
          home: const RootPage(),
          theme: DesignStyles.themeData,
          debugShowCheckedModeBanner: false,
        );
}

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> with PopScopeHost<RootPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onWillPop,
      child: const FlowControllerRoot(),
    );
  }
}

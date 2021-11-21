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
          home: const FlowControllerRoot(),
          theme: DesignStyles.themeData,
          debugShowCheckedModeBanner: false,
        );
}

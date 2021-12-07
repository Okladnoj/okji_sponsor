import 'package:firebase_core/firebase_core.dart';
import 'package:okji_sponsor/services/initialization_app/analytic.dart';

import '../localization/localization_repo.dart';

import '../settings.dart';
import 'app_preference.dart';
import 'themes_init.dart';

class AppInit {
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    await AppPreference.init();
    AnalyticAppEvents();
    await ThemesInit.init();
    final lS = await LocaleRepository.instance.loadLocale();
    await Strings.loadFromLocal(Locale(lS));
    AppApi.init();
    DesignStyles.changeTheme(ThemesInit.type);
  }
}

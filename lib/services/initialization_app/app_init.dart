import 'package:firebase_core/firebase_core.dart';

import '../../services/initialization_app/analytic.dart';
import '../settings.dart';

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

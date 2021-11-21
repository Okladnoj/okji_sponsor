import '../localization/localization_repo.dart';

import '../settings.dart';
import 'app_preference.dart';
import 'themes_init.dart';

class AppInit {
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await AppPreference.init();
    await ThemesInit.init();
    final lS = await LocaleRepository.instance.loadLocale();
    await Strings.loadFromLocal(Locale(lS));
    AppApi.init();
    DesignStyles.changeTheme(ThemesInit.type);
  }
}

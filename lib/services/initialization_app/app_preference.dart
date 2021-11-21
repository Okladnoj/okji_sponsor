import '../settings.dart';

class AppPreference {
  static bool isIntoApp = false;
  static String token = '';
  static const baseUrl = 'https://taptap.phish.xlab13.com/';
  static const _baseSocketUrl = 'wss://taptap.phish.xlab13.com/';
  static String socketUrl(String code) => _baseSocketUrl + code;
  static Future<void> init() async {
    await _getLoginStatus();
    await _getToken();
  }

  static Future<void> _getLoginStatus() async {
    final themeString = await AppPreferences.getBool(AppPreferencesBool.isLogin);
    if (themeString != null) {
      isIntoApp = themeString;
    } else {
      isIntoApp = false;
      AppPreferences.setBool(AppPreferencesBool.isLogin, isIntoApp);
    }
  }

  static Future<void> _getToken() async {
    final themeString = await AppPreferences.getString(AppPreferencesString.token);
    if (themeString != null) {
      token = themeString;
    } else {
      isIntoApp = false;
      AppPreferences.setBool(AppPreferencesBool.isLogin, isIntoApp);
    }
  }

  static Future<void> logout() async {
    isIntoApp = false;
    AppPreferences.setBool(AppPreferencesBool.isLogin, isIntoApp);
  }
}

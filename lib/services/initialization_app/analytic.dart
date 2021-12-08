import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:intl/intl.dart';
import 'package:okji_sponsor/services/initialization_app/app_preference.dart';

class AnalyticAppEvents {
  AnalyticAppEvents() {
    _analytics = FirebaseAnalytics();
  }
  static late FirebaseAnalytics _analytics;

  static AnalyzeModel? _analyzeModel;
  static final _f = DateFormat('yyyy.MM.dd HH:mm:ss');

  static String get _getTimeStamp => _f.format(DateTime.now());

  static FirebaseAnalytics get getInstance => _analytics;

  static Future<void> setEventString(String name) async {
    final Map<String, Object?> parameters = {};
    await _checkAnalyzer();
    _setIdenticInfo(parameters);
    try {
      await _analytics.logEvent(name: name, parameters: parameters);
    } catch (e) {
      print(e);
    }
  }

  static Future<void> setEventStringDuration(String name, int? seconds) async {
    final Map<String, Object?> parameters = {};
    await _checkAnalyzer();
    _setIdenticInfo(parameters);
    try {
      parameters['second'] = seconds ?? 0;
      await _analytics.logEvent(name: name, parameters: parameters);
    } catch (e) {
      print(e);
    }
  }

  static Future<void> setEventStringWithMap(String name, Map<String, Object?> parameters) async {
    await _checkAnalyzer();
    _setIdenticInfo(parameters);
    try {
      await _analytics.logEvent(name: name, parameters: parameters);
    } catch (e) {
      print(e);
    }
  }

  static Future<void> _checkAnalyzer() async {
    final isActualModel = _analyzeModel?.isActual ?? false;
    if (!isActualModel) {
      try {
        final user = AppPreference.user;
        _analyzeModel = AnalyzeModel(
          user.email ?? 'No Email',
          user.name ?? 'No Name',
          user.phone,
        );
      } catch (_) {
        print(_);
      }
    }
  }

  static void _setIdenticInfo(Map<String, Object?> parameters) {
    final _email = [_analyzeModel?.email].join();
    final _name = [
      _analyzeModel?.name,
    ].join(' ');
    final _emailPhone = [
      _analyzeModel?.email,
      _analyzeModel?.phone,
    ].join(', ');
    final _emailDevice = [_email, ' (', _name, ')'].join();
    parameters['email_name'] = _emailDevice;
    parameters['time_stamp'] = _getTimeStamp;
    parameters['email'] = _email;
    parameters['email_phone'] = _emailPhone;
  }
}

class AnalyzeModel {
  final String email;
  final String name;
  final String? phone;

  AnalyzeModel(
    this.email,
    this.name,
    this.phone,
  );
  bool get isActual {
    final isActualModel = email.isNotEmpty && //
        name.isNotEmpty &&
        name != 'No Name' &&
        email != 'No Email' &&
        true;
    return isActualModel;
  }
}
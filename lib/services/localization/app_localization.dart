import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../settings.dart';
import 'local_storage.dart';

class Strings {
  static Locale locale = Locale(LocalStorage.defaultLocale);

  Strings();

  static Strings text = Strings();

  String get inputEmail => _getText('inputEmail');
  String get input => _getText('input');
  String get singInGoogle => _getText('singInGoogle');
  String get login => _getText('login');
  String get settings => _getText('settings');
  String get english => _getText('english');
  String get russian => _getText('russian');
  String get nA => _getText('nA');
  String get notPhone => _getText('notPhone');
  String get notEmail => _getText('notEmail');
  String get homePage => _getText('homePage');
  String get workout => _getText('workout');
  String get gravityEarth => _getText('gravityEarth');
  String get gravityPhone => _getText('gravityPhone');
  String get stopSpeed => _getText('stopSpeed');
  String get walkSpeed => _getText('walkSpeed');
  String get runSpeed => _getText('runSpeed');
  String get flySpeed => _getText('flySpeed');

  String get emptyString => _getText('emptyString');

  String _getText(String code) => _dictionary[code] ?? ':$code:';

  static Map<String, String?> _dictionary = {};

  static Set<LangModel> languages = {
    LangModel('English', 'en'),
    LangModel('Русский', 'ru'),
  };

  static Future<void> loadFromLocal(Locale l) async {
    try {
      locale = l;
      final String string = await rootBundle.loadString("assets/langs/${locale.languageCode}.json");
      _dictionary = (json.decode(string) as Map<String, dynamic>).cast();
    } catch (e) {
      print(e);
    }
  }
}

class LangModel {
  final String name;
  final String code;

  LangModel(
    this.name,
    this.code,
  );
  @override
  bool operator ==(dynamic other) => other is LangModel && other.code == code;

  @override
  int get hashCode => code.hashCode;
}

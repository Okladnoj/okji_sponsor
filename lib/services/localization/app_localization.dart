import 'dart:convert';

import 'package:dio/dio.dart';
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
  String get login => _getText('login');
  String get listTruck => _getText('listTruck');
  String get session => _getText('session');
  String get settings => _getText('settings');
  String get english => _getText('english');
  String get russian => _getText('russian');
  String get inputPasswordTitle => _getText('inputPasswordTitle');
  String get inputPasswordDescribe => _getText('inputPasswordDescribe');
  String get confirm => _getText('confirm');
  String get cancel => _getText('cancel');
  String get emptyNameUser => _getText('emptyNameUser');
  String get emptyNameSession => _getText('emptyNameSession');
  String get start => _getText('start');
  String get wait => _getText('wait');
  String get tap => _getText('tap');
  String get sessionCreateTitle => _getText('sessionCreateTitle');
  String get sessionNameInput => _getText('sessionNameInput');
  String get sessionPinCodeInput => _getText('sessionPinCodeInput');
  String get sessionCreate => _getText('sessionCreate');

  String get emptyString => _getText('emptyString');

  String _getText(String code) => _dictionary[code] ?? ':$code:';

  static Map<String, String?> _dictionary = {};

  static Set<LangModel> languages = {};

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

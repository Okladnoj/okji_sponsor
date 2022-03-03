import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:okji_sponsor/modules/app/profile/models/user_model.dart';
import 'package:okji_sponsor/services/settings.dart';

class ProfileApi {
  final _dio = AppApi.dio;

  static CollectionReference<Map<String, dynamic>> get collection =>
      FirebaseFirestore.instance.collection('root').doc('usersDoc1').collection('users');

  Future<UserModel?> getProfile() async {
    final user = AppPreference.user;

    final firDoc = user.toDocumentReference();
    final _result = await firDoc.get();

    return _result.data();
  }

  Future<void> saveUserModel(UserModel model) async {
    final firDoc = model.toDocumentReference();
    await firDoc.set(model);
    AppPreference.user = model;
    final _sUser = jsonEncode(AppPreference.user.toJson());
    await AppPreferences.setString(AppPreferencesString.user, _sUser);
  }
}

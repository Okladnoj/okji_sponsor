import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:okji_sponsor/modules/app/profile/models/user_model.dart';
import 'package:okji_sponsor/services/settings.dart';

class ProfileApi {
  final _dio = AppApi.dio;

  Future<UserModel?> getProfile() async {
    final user = AppPreference.user;

    final firDoc = user.toDocumentReference();
    final _result = await firDoc.get();

    return _result.data();
  }

  static Future<UserModel> _parseProfileModel(
    Map<String, dynamic> json,
  ) async {
    return compute<Map<String, dynamic>, UserModel>(
      (json) async => UserModel.fromJson(json),
      json,
    );
  }

  Future<void> saveUserModel(UserModel model) async {
    final firDoc = model.toDocumentReference();
    await firDoc.set(model);
    AppPreference.user = model;
  }
}

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import '../../../services/settings.dart';

import '../models/login_model.dart';

class LoginApi {
  final _dio = Dio();

  Future<LoginModelResponse?> onSingIn(SinInModel model) async {
    LoginModelResponse? result;
    final body = model.toJson();
    final response = await _dio.post(
      AppPreference.baseUrl + 'oauth/google/login',
      data: body,
    );

    final data = response.data as Map<String, dynamic>?;

    if (data != null) {
      result = await compute<Map<String, dynamic>, LoginModelResponse>(
        _parseLoginModel,
        data,
      );
    }

    return result;
  }

  static Future<LoginModelResponse> _parseLoginModel(
    Map<String, dynamic> body,
  ) async {
    return LoginModelResponse.fromJson(body);
  }
}

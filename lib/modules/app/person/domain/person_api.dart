import 'package:flutter/foundation.dart';
import 'package:okji_sponsor/services/settings.dart';

import '../../profile/models/user_model.dart';
import '../models/person_model.dart';

class PersonApi {
  final _dio = AppApi.dio;

  Future<PersonModelResponse?> getPerson() async {
    PersonModelResponse? result;
    final body = {};
    final response = await _dio.get(
      'truck',
      // data: body,
    );

    final data = response.data as Map<String, dynamic>?;

    if (data != null) {
      result = await compute<Map<String, dynamic>, PersonModelResponse>(
        _parsePersonModel,
        data,
      );
    }

    return result;
  }

  Future<void> updateUsers(List<UserModel> listUpdateUsers) async {
    for (final model in listUpdateUsers) {
      final firDoc = model.toDocumentReference();
      await firDoc.set(model);
    }
  }

  static Future<PersonModelResponse> _parsePersonModel(
    Map<String, dynamic> body,
  ) async {
    return PersonModelResponse.fromJson(body);
  }
}

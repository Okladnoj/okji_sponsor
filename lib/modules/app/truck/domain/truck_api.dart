import 'package:flutter/foundation.dart';
import '../../../../services/settings.dart';

import '../models/truck_model.dart';

class TruckApi {
  final _dio = AppApi.dio;

  Future<TruckModelResponse?> getTruck() async {
    TruckModelResponse? result;
    final body = {};
    final response = await _dio.get(
      'truck',
      // data: body,
    );

    final data = response.data as Map<String, dynamic>?;

    if (data != null) {
      result = await compute<Map<String, dynamic>, TruckModelResponse>(
        _parseTruckModel,
        data,
      );
    }

    return result;
  }

  static Future<TruckModelResponse> _parseTruckModel(
    Map<String, dynamic> body,
  ) async {
    return TruckModelResponse.fromJson(body);
  }
}

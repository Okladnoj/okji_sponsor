import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:okji_sponsor/models/user/login_model.dart';

part 'home_model.freezed.dart';
part 'home_model.g.dart';

@freezed
class HomeModelResponse with _$HomeModelResponse {
  @JsonSerializable(explicitToJson: true, includeIfNull: true)
  const factory HomeModelResponse({
    @JsonKey(name: 'code') int? code,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'user') UserModel? user,
  }) = _HomeModelResponse;

  factory HomeModelResponse.fromJson(Map<String, dynamic> json) => _$HomeModelResponseFromJson(json);
}

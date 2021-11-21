import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import '../../../../services/settings.dart';

part 'truck_model.freezed.dart';
part 'truck_model.g.dart';

@freezed
class TruckModelResponse with _$TruckModelResponse {
  @JsonSerializable(explicitToJson: true, includeIfNull: true)
  const factory TruckModelResponse({
    @JsonKey(name: 'code') int? code,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') List<SessionModel?>? listSession,
  }) = _TruckModelResponse;

  factory TruckModelResponse.fromJson(Map<String, dynamic> json) => _$TruckModelResponseFromJson(json);
}

@freezed
class SessionModel with _$SessionModel {
  @JsonSerializable(explicitToJson: true, includeIfNull: true)
  const factory SessionModel({
    @JsonKey(name: 'uuid') String? uuid,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'users') List<UserModel?>? users,
    @JsonKey(name: 'protected') bool? protected,
    @JsonKey(name: 'created_at', fromJson: JsonParser.stringToDateTime) DateTime? createdAt,
    @JsonKey(name: 'expired_at', fromJson: JsonParser.stringToDateTime) DateTime? expiredAt,
    @JsonKey(name: 'pinCode') String? pinCode,
  }) = _SessionModel;

  factory SessionModel.fromJson(Map<String, dynamic> json) => _$SessionModelFromJson(json);
}

@freezed
class UserModel with _$UserModel {
  @JsonSerializable(explicitToJson: true, includeIfNull: true)
  const factory UserModel({
    @JsonKey(name: 'uuid') String? uuid,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'scores') int? scores,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}

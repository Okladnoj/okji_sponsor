import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
class LoginModelResponse with _$LoginModelResponse {
  @JsonSerializable(explicitToJson: true, includeIfNull: true)
  const factory LoginModelResponse({
    @JsonKey(name: 'code') int? code,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') LoginModel? data,
  }) = _LoginModelResponse;

  factory LoginModelResponse.fromJson(Map<String, dynamic> json) => _$LoginModelResponseFromJson(json);
}

@freezed
class LoginModel with _$LoginModel {
  @JsonSerializable(explicitToJson: true, includeIfNull: true)
  const factory LoginModel({
    @JsonKey(name: 'user') UserModel? user,
    @JsonKey(name: 'token') String? token,
  }) = _LoginModel;

  factory LoginModel.fromJson(Map<String, dynamic> json) => _$LoginModelFromJson(json);
}

@freezed
class UserModel with _$UserModel {
  @JsonSerializable(explicitToJson: true, includeIfNull: true)
  const factory UserModel({
    @JsonKey(name: 'uuid') String? uuid,
    @JsonKey(name: 'kind') String? kind,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}

@freezed
class SinInModel with _$SinInModel {
  @JsonSerializable(explicitToJson: true, includeIfNull: true)
  const factory SinInModel({
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'password') String? password,
  }) = _SinInModel;

  factory SinInModel.fromJson(Map<String, dynamic> json) => _$SinInModelFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
class UserModel with _$UserModel {
  @JsonSerializable(explicitToJson: true, includeIfNull: true)
  const factory UserModel({
    @JsonKey(name: 'uid') String? uid,
    @JsonKey(name: 'displayName') String? displayName,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'photoURL') String? photoURL,
    @JsonKey(name: 'phoneNumber') String? phoneNumber,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}

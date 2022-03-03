import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:okji_sponsor/modules/app/profile/models/user_model.dart';

part 'administration_model.freezed.dart';
part 'administration_model.g.dart';

enum StatusType {
  blackList,
  friendList,
  subscribeList,
}

@freezed
class AdministrationModelResponse with _$AdministrationModelResponse {
  @JsonSerializable(explicitToJson: true, includeIfNull: true)
  const factory AdministrationModelResponse({
    @JsonKey(name: 'blackUsers') List<UserModel>? blackUsers,
    @JsonKey(name: 'friendUsers') List<UserModel>? friendUsers,
    @JsonKey(name: 'subscribeUsers') List<UserModel>? subscribeUsers,
    @JsonKey(name: 'statusType') StatusType? type,
  }) = _AdministrationModelResponse;

  factory AdministrationModelResponse.fromJson(Map<String, dynamic> json) =>
      _$AdministrationModelResponseFromJson(json);
}

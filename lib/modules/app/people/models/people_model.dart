import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:okji_sponsor/modules/app/profile/models/user_model.dart';

import 'people_model_ui.dart';

part 'people_model.freezed.dart';
part 'people_model.g.dart';

enum PeopleType {
  all,
  friend,
  subscribe,
  none,
}

@freezed
class PeopleModelResponse with _$PeopleModelResponse {
  @JsonSerializable(explicitToJson: true, includeIfNull: true)
  const factory PeopleModelResponse({
    @JsonKey(name: 'allUsers') List<UserModel>? allUsers,
    @JsonKey(name: 'friendUsers') List<UserModel>? friendUsers,
    @JsonKey(name: 'subscribeUsers') List<UserModel>? subscribeUsers,
    @JsonKey(name: 'peopleType') PeopleType? type,
  }) = _PeopleModelResponse;

  factory PeopleModelResponse.fromJson(Map<String, dynamic> json) => _$PeopleModelResponseFromJson(json);
}

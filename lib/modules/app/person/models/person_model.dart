import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:okji_sponsor/modules/app/profile/models/user_model.dart';

part 'person_model.freezed.dart';
part 'person_model.g.dart';

@freezed
class PersonModelResponse with _$PersonModelResponse {
  @JsonSerializable(explicitToJson: true, includeIfNull: true)
  const factory PersonModelResponse({
    @JsonKey(name: 'user') UserModel? user,
  }) = _PersonModelResponse;

  factory PersonModelResponse.fromJson(Map<String, dynamic> json) => _$PersonModelResponseFromJson(json);
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:okji_sponsor/modules/app/people/models/people_model.dart';
import 'package:okji_sponsor/modules/app/profile/domain/profile_api.dart';
import 'package:okji_sponsor/services/settings.dart';

import 'user_mode_iu.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed

/// * height - рост (мм)
///
/// * weight - вес (грамм)
///
/// * chest - обхват груди (мм)
///
/// * waist - обхват талии (мм)
///
/// * hip - обхват бедер (мм)

@freezed
class UserModel with _$UserModel {
  @JsonSerializable(explicitToJson: true, includeIfNull: true)
  const factory UserModel({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'name') UserStringProperty? name,
    @JsonKey(name: 'phone') UserStringProperty? phone,
    @JsonKey(name: 'email') UserStringProperty? email,
    @JsonKey(name: 'avatar') UserStringProperty? avatar,
    @JsonKey(name: 'age') UserIntProperty? age,
    @JsonKey(name: 'height') UserIntProperty? height,
    @JsonKey(name: 'weight') UserIntProperty? weight,
    @JsonKey(name: 'chest') UserIntProperty? chest,
    @JsonKey(name: 'waist') UserIntProperty? waist,
    @JsonKey(name: 'hip') UserIntProperty? hip,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic>? json) => _$UserModelFromJson(json ?? {});
}

@freezed
class UserIntProperty with _$UserIntProperty {
  @JsonSerializable(explicitToJson: true, includeIfNull: true)
  const factory UserIntProperty({
    @JsonKey(name: 'value') int? value,
    @JsonKey(name: 'access') PeopleType? access,
  }) = _UserIntProperty;

  factory UserIntProperty.fromJson(Map<String, dynamic>? json) => _$UserIntPropertyFromJson(json ?? {});
}

@freezed
class UserStringProperty with _$UserStringProperty {
  @JsonSerializable(explicitToJson: true, includeIfNull: true)
  const factory UserStringProperty({
    @JsonKey(name: 'value') String? value,
    @JsonKey(name: 'access') PeopleType? access,
  }) = _UserStringProperty;

  factory UserStringProperty.fromJson(Map<String, dynamic>? json) => _$UserStringPropertyFromJson(json ?? {});
}

extension ToUserModelUI on UserModel {
  DocumentReference<UserModel> toDocumentReference() {
    final usersDoc = ProfileApi.collection.doc(id).withConverter<UserModel>(
          fromFirestore: (_, __) => UserModel.fromJson(_.data() ?? {}),
          toFirestore: (_, __) => toJson(),
        );
    return usersDoc;
  }

  UserModelUI toUI() {
    return UserModelUI(
      id ?? '',
      UserPropertyUI<String>(name?.value ?? Strings.text.nA, name?.access ?? PeopleType.none),
      UserPropertyUI<String>(_parsAge(age?.value), age?.access ?? PeopleType.none),
      UserPropertyUI<String>(_formatPhone(phone?.value), phone?.access ?? PeopleType.none),
      UserPropertyUI<String>(email?.value ?? Strings.text.nA, email?.access ?? PeopleType.none),
      UserPropertyUI<String>(avatar?.value ?? Strings.text.nA, avatar?.access ?? PeopleType.none),
      UserPropertyUI<String>(_parsMillimeter(height?.value), height?.access ?? PeopleType.none),
      UserPropertyUI<String>(_parsGrams(weight?.value), weight?.access ?? PeopleType.none),
      UserPropertyUI<String>(_parsMillimeter(chest?.value), chest?.access ?? PeopleType.none),
      UserPropertyUI<String>(_parsMillimeter(waist?.value), waist?.access ?? PeopleType.none),
      UserPropertyUI<String>(_parsMillimeter(hip?.value), hip?.access ?? PeopleType.none),
      this,
    );
  }

  String _parsAge(int? age) {
    if (age != null) {
      return '${Strings.text.age}: $age';
    } else {
      return Strings.text.nA;
    }
  }

  String _parsMillimeter(int? value) {
    if (value != null) {
      final m = value ~/ 100;
      final sm = value % ((m == 0 ? 1 : m) * 100);
      final mm = value % ((m == 0 ? 1 : m) * 1);
      final result = [
        if (m > 0) '$m ${Strings.text.mShort}',
        if (sm > 0) '$sm ${Strings.text.smShort}',
        // if (mm > 0) '$mm ${Strings.text.mm}',
      ].join(', ');
      return result;
    } else {
      return Strings.text.nA;
    }
  }

  String _parsGrams(int? value) {
    if (value != null) {
      final kg = value ~/ 1000;
      final g = value % ((kg == 0 ? 1 : kg) * 1000);
      final result = [
        if (kg > 0) '$kg ${Strings.text.kgShort}',
        if (g > 0) '$g ${Strings.text.grShort}',
      ].join(', ');
      return result;
    } else {
      return Strings.text.nA;
    }
  }

  String _formatPhone(String? s) {
    if (s?.isNotEmpty ?? false) {
      return Config.phoneMask.maskText(s!);
    } else {
      return Strings.text.nA;
    }
  }
}

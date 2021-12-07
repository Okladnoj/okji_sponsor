import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
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
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'avatar') String? avatar,
    @JsonKey(name: 'age') int? age,
    @JsonKey(name: 'height') int? height,
    @JsonKey(name: 'weight') int? weight,
    @JsonKey(name: 'chest') int? chest,
    @JsonKey(name: 'waist') int? waist,
    @JsonKey(name: 'hip') int? hip,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}

extension ToUserModelUI on UserModel {
  DocumentReference<UserModel> toDocumentReference() {
    final collection = FirebaseFirestore.instance.collection('root').doc('usersDoc').collection('users');
    final usersDoc = collection.doc(id).withConverter<UserModel>(
          fromFirestore: (_, __) => UserModel.fromJson(_.data() ?? {}),
          toFirestore: (_, __) => toJson(),
        );
    return usersDoc;
  }

  UserModelUI toUI() {
    return UserModelUI(
      id ?? '',
      name ?? Strings.text.nA,
      _parsAge(age),
      _formatPhone(phone),
      email ?? Strings.text.nA,
      avatar ?? Strings.text.nA,
      _parsMillimeter(height),
      _parsGrams(weight),
      _parsMillimeter(chest),
      _parsMillimeter(waist),
      _parsMillimeter(hip),
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

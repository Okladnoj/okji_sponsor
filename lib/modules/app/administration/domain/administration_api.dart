import 'package:flutter/foundation.dart';
import 'package:okji_sponsor/modules/app/profile/domain/profile_api.dart';
import 'package:okji_sponsor/modules/app/profile/models/user_model.dart';
import 'package:okji_sponsor/services/settings.dart';

import '../models/administration_model.dart';

class AdministrationApi {
  final _dio = AppApi.dio;

  Future<List<UserModel>> loadBlackList(Set<String> blackList) async {
    List<UserModel> result = [];
    if (blackList.isEmpty) {
      return result;
    }
    final collection = ProfileApi.collection;
    final usersDoc = await collection.where('blackList', whereIn: blackList.toList()).get();
    final usersDocs = usersDoc.docs
        .map(
          (e) => collection.doc(e.id).withConverter<UserModel>(
                fromFirestore: (_, __) => UserModel.fromJson(_.data() ?? {}),
                toFirestore: (_, __) => _.toJson(),
              ),
        )
        .toList();

    for (final doc in usersDocs) {
      final _doc = (await doc.get()).data();
      if (_doc != null) {
        result.add(_doc);
      }
    }

    return result;
  }

  Future<List<UserModel>> getFriends(Set<String> friendsRequest) async {
    List<UserModel> result = [];
    if (friendsRequest.isEmpty) {
      return result;
    }
    final collection = ProfileApi.collection;
    final usersDoc = await collection.where('friendsRequest', whereIn: friendsRequest.toList()).get();
    final usersDocs = usersDoc.docs
        .map(
          (e) => collection.doc(e.id).withConverter<UserModel>(
                fromFirestore: (_, __) => UserModel.fromJson(_.data() ?? {}),
                toFirestore: (_, __) => _.toJson(),
              ),
        )
        .toList();

    for (final doc in usersDocs) {
      final _doc = (await doc.get()).data();
      if (_doc != null) {
        result.add(_doc);
      }
    }

    return result;
  }

  Future<List<UserModel>> getSubscribes(Set<String> subscribesRequest) async {
    List<UserModel> result = [];
    if (subscribesRequest.isEmpty) {
      return result;
    }
    final collection = ProfileApi.collection;
    final usersDoc = await collection.where('subscribesRequest', whereIn: subscribesRequest.toList()).get();
    final usersDocs = usersDoc.docs
        .map(
          (e) => collection.doc(e.id).withConverter<UserModel>(
                fromFirestore: (_, __) => UserModel.fromJson(_.data() ?? {}),
                toFirestore: (_, __) => _.toJson(),
              ),
        )
        .toList();

    for (final doc in usersDocs) {
      final _doc = (await doc.get()).data();
      if (_doc != null) {
        result.add(_doc);
      }
    }

    return result;
  }
}

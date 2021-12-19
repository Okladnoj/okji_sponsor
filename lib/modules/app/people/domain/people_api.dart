import 'package:okji_sponsor/modules/app/profile/domain/profile_api.dart';
import 'package:okji_sponsor/modules/app/profile/models/user_model.dart';
import 'package:okji_sponsor/services/settings.dart';

class PeopleApi {
  final _dio = AppApi.dio;

  Future<List<UserModel>> getPeople() async {
    List<UserModel> result = [];
    final collection = ProfileApi.collection;
    final usersDoc = await collection.limit(100).get();
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

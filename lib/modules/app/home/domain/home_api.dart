import 'package:okji_sponsor/modules/app/profile/models/user_model.dart';
import '../../../../services/settings.dart';

import '../models/home_model.dart';

class HomeApi {
  final _dio = AppApi.dio;

  Future<HomeModelResponse?> updateUser(UserModel user) async {
    HomeModelResponse? result;

    final usersDoc = user.toDocumentReference();

    final _user = (await usersDoc.get()).data();

    if (_user != null) {
      result = HomeModelResponse(user: _user);
    } else {
      usersDoc.set(user);
      result = HomeModelResponse(user: user);
    }

    // // Delete User
    // FirebaseFirestore.instance.collection("users").where("email", isEqualTo: user.email).get().then((value) {
    //   value.docs.forEach((element) {
    //     FirebaseFirestore.instance.collection("users").doc(element.id).delete().then((value) {
    //       print("Delete! - " '${element.data()['email']}');
    //     });
    //   });
    // });

    // // Delete Collection
    // final coll = FirebaseFirestore.instance.collection("root");
    // coll.get().then((value) {
    //   value.docs.forEach((element) {
    //     coll.doc(element.id).delete().then((value) {
    //       print("Delete! - " '${element.data()['email']}');
    //     });
    //   });
    // });

    print(result);

    return result;
  }
}

import 'package:testcanafran/src/authentification/data/models/user_model.dart';

abstract class AuthentificationRemoteDataSource {
  Future<void> createUser({
    required String createdAt,
    required String name,
    required String avatar,
  });

Future<List<UserModel>> getUsers();

}

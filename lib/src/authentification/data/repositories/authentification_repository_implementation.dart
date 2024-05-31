import 'package:testcanafran/core/utils/typedef.dart';
import 'package:testcanafran/src/authentification/data/datasources/authentification_remote_data_source.dart';
import 'package:testcanafran/src/authentification/domain/entities/user.dart';
import 'package:testcanafran/src/authentification/domain/repositories/authentification_repository.dart';

class AuthentificationRepositoryImplementation
    implements AuthentificationRepository {
      const AuthentificationRepositoryImplementation(this._remoteDataSource);
      final AuthentificationRemoteDataSource _remoteDataSource;
  @override
  ResultVoid createUser({
    required String createdAt,
    required String name,
    required String avatar,
  }) async{
    // Test Driven Developpement
    // Call the remote data source
    // Check if the method return the proper data
    // Check if when the remoteDataSource throws an exception, we return a failure and if it doesn't throw an exception, we return the actual expected data
     // TODO: implement getUser
    throw UnimplementedError();
  }

  @override
  ResultFuture<List<User>> getUser() async {
    // TODO: implement getUser
    throw UnimplementedError();
  }
}

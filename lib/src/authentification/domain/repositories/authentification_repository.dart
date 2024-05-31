import 'package:dartz/dartz.dart';
import 'package:testcanafran/core/errors/failure.dart';
import 'package:testcanafran/core/utils/typedef.dart';
import 'package:testcanafran/src/authentification/domain/entities/user.dart';

abstract class AuthentificationRepository {
  const AuthentificationRepository();

  
  ResultVoid createUser({
    required String createdAt,
    required String name,
    required String avatar,
  });

  ResultFuture<List<User>> getUser();
}
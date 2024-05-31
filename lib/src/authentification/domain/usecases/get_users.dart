import 'package:equatable/equatable.dart';
import 'package:testcanafran/core/usecase/usecase.dart';
import 'package:testcanafran/core/utils/typedef.dart';
import 'package:testcanafran/src/authentification/domain/entities/user.dart';
import 'package:testcanafran/src/authentification/domain/repositories/authentification_repository.dart';

class GetUsers extends UsecaseWithOutParams<List<User>> {
  const GetUsers(this._repository);

  final AuthentificationRepository _repository;

  @override
  ResultFuture<List<User>> call() async => 
      _repository.getUser();
}

class CreateUserWithParams extends Equatable{
    const CreateUserWithParams ({
    required this.createdAt,
    required this.name,
    required this.avatar,
  });
  final String createdAt;
  final String name;
  final String avatar;

  @override
  // TODO: implement props
  List<Object?> get props => [createdAt,name,avatar];
}

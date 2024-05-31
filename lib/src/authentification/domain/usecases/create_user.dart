import 'package:equatable/equatable.dart';
import 'package:testcanafran/core/usecase/usecase.dart';
import 'package:testcanafran/core/utils/typedef.dart';
import 'package:testcanafran/src/authentification/domain/repositories/authentification_repository.dart';

class CreateUser extends UsecaseWithParams<void, CreateUserWithParams> {
  const CreateUser(this._repository);

  final AuthentificationRepository _repository;

  @override
  ResultVoid call(CreateUserWithParams params) => _repository.createUser(
        createdAt: params.createdAt,
        name: params.name,
        avatar: params.avatar,
      );
}

class CreateUserWithParams extends Equatable {
  const CreateUserWithParams({
    required this.createdAt,
    required this.name,
    required this.avatar,
  });

  const CreateUserWithParams.empty()
      : this(
          createdAt: '_empty.string',
          name: '_empty.string',
          avatar: '_empty.string',
        );

  final String createdAt;
  final String name;
  final String avatar;

  @override
  // TODO: implement props
  List<Object?> get props => [createdAt, name, avatar];
}

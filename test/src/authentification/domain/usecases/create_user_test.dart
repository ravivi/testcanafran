import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:testcanafran/src/authentification/domain/repositories/authentification_repository.dart';
import 'package:testcanafran/src/authentification/domain/usecases/create_user.dart';

import 'authentification_repository.mock.dart';


void main() {
  late CreateUser usecase;
  late AuthentificationRepository repository;

  setUp(() {
    repository = MockAuthRepo();
    usecase = CreateUser(repository);
  });
  const params = CreateUserWithParams.empty();
  test(
    "Should call the [AuthRepo.createUser]",
    () async {
      // Arrange
      // Configure le mock pour retourner un résultat attendu
      when(
        () => repository.createUser(
          createdAt: any(named: 'createdAt'),
          name: any(named: 'name'),
          avatar: any(named: 'avatar'),
        ),
      ).thenAnswer((_) async => const Right(null));

      // Act
      final result = await usecase(params);

      // Assert

      expect(result, equals(const Right<dynamic, void>(null)));
      verify(() => repository.createUser(
            createdAt: params.createdAt,
            name: params.name,
            avatar: params.avatar,
          )).called(1);
      verifyNoMoreInteractions(repository);
    },
  );
}

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:testcanafran/src/authentification/domain/entities/user.dart';
import 'package:testcanafran/src/authentification/domain/repositories/authentification_repository.dart';
import 'package:testcanafran/src/authentification/domain/usecases/get_users.dart';

import 'authentification_repository.mock.dart';

void main() {
  late AuthentificationRepository repository;
  late GetUsers usecase;

  setUp(() {
    repository = MockAuthRepo();
    usecase = GetUsers(repository);
  });
  const tResponse = [User.empty()];
  test(
    "Should call the [AuthRepo.getUsers] and return list [List<Users>]",
    () async {
      // Arrange
      // Configure le mock pour retourner un résultat attendu
      when(
        () => repository.getUser(),
      ).thenAnswer((_) async => const Right(tResponse));

      // Act
      final result = await usecase();
      expect(result, equals(const Right<dynamic, List<User>>(tResponse)));

      // Assert
      verify(() => repository.getUser()).called(1);
      verifyNoMoreInteractions(repository);
    },
  );
}

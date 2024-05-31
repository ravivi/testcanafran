import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:testcanafran/core/utils/typedef.dart';
import 'package:testcanafran/src/authentification/data/models/user_model.dart';
import 'package:testcanafran/src/authentification/domain/entities/user.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  const tModel = UserModel.empty();


  setUp(() {

  });
  test(
    "Should be a subclass of [User] entity",
    (){
      // Arrange
      // Configure le mock pour retourner un résultat attendu
      // Assert
      expect(tModel, isA<User>());
    },
  );
   final tJson = fixture('user.json');
   final tMap = jsonDecode(tJson) as DataMap;
  group("fromMap",(){
  test(
    "Should be return a [UserModel] with the right data",
    (){
      // Arrange
      // Configure le mock pour retourner un résultat attendu
      // Act
final result = UserModel.fromMap(tMap);
      // Assert
      expect(result, equals(tModel));
    },
  );
  });
  group("fromJson",(){
  test(
    "Should be return a [UserModel] with the right data",
    (){
      // Arrange
      // Configure le mock pour retourner un résultat attendu
      // Act
final result = UserModel.fromJson(tJson);
      // Assert
      expect(result, equals(tModel));
    },
  );
  });
  group("toMap",(){
  test(
    "Should return a [Map] with the right data",
    (){
      // Arrange
      // Configure le mock pour retourner un résultat attendu
      // Act
final result =tModel.toMap();
      // Assert
      expect(result, equals(tMap));
    },
  );
  });
  group("toJson",(){
  test(
    "Should return a [json] with the right data",
    (){
      // Arrange
      // Configure le mock pour retourner un résultat attendu
      // Act
final result =tModel.toJson();
final tJson = jsonEncode(    {
        "id": "1",
        "createdAt": "_empty.createdAt",
        "name": "_empty.name",
        "avatar": "_empty.avatar"
    });
      // Assert
      expect(result, tJson);
    },
  );
  });
  group("copyWith",(){
  test(
    "Should return a [json] with the right data",
    (){
      // Arrange
      // Configure le mock pour retourner un résultat attendu
      // Act
final result =tModel.copyWith(name: "Ravière Octave",createdAt: "",avatar: "image1.png");
      // Assert
      expect(result.name, equals("Ravière Octave"));
    },
  );
  });

}

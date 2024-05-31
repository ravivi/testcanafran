import 'package:testcanafran/core/utils/typedef.dart';

abstract class UsecaseWithParams<Type,Params>{
  const UsecaseWithParams();
  ResultFuture<Type> call(Params params);
}

abstract class UsecaseWithOutParams<Type>{
  const UsecaseWithOutParams();
  ResultVoid call();
}
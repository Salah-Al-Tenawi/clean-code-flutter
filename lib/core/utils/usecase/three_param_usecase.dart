import 'package:cleanarchitecture/core/errors/filuar.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<Type ,p1 ,p2 ,p3> {
  Future<Either<ErrorModel,Type>> call(p1 p ,p2 p2 ,p3 p3);
}
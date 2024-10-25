import 'package:cleanarchitecture/core/errors/filuar.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<Type, param> {
  Future<Either<ErrorModel, Type>> call(param param);
}

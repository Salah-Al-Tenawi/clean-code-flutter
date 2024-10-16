import 'package:cleanarchitecture/core/errors/filuar.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<Type > {
  Future<Either<ErrorModel,Type>> call();
}
class NoParameter{}
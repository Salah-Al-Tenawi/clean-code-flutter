import 'package:cleanarchitecture/core/errors/filuar.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<Type > {
  Future<Either<Filuar,Type>> call();
}
class NoParameter{}
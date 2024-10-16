import 'package:cleanarchitecture/core/errors/filuar.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<Type ,Parameter ,Parameter2> {
  Future<Either<ErrorModel,Type>> call(Parameter param , Parameter2 parm2);
}

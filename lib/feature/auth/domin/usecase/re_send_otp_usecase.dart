import 'package:cleanarchitecture/core/errors/filuar.dart';
import 'package:cleanarchitecture/core/usecase/one_param_usecase.dart';
import 'package:dartz/dartz.dart';

class ReSendOtpUsecase  extends UseCase<dynamic,String>{
  @override
  Future<Either<ErrorModel, dynamic>> call(String param) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
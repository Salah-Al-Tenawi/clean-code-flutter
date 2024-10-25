import 'package:cleanarchitecture/core/errors/filuar.dart';
import 'package:cleanarchitecture/core/utils/usecase/three_param_usecase.dart';
import 'package:cleanarchitecture/feature/auth/data/models/user_model.dart';
import 'package:dartz/dartz.dart';

class SingInUsecase  extends UseCase<UserModel ,String ,String , String>{
  @override
  Future<Either<ErrorModel, UserModel>> call(String p, String p2, String p3)async {
    // TODO: implement call
    throw UnimplementedError();
  }


}
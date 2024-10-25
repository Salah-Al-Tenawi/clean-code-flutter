// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cleanarchitecture/core/utils/usecase/tow_param_use_case.dart';
import 'package:cleanarchitecture/feature/auth/data/models/user_model.dart';
import 'package:dartz/dartz.dart';
import 'package:cleanarchitecture/core/errors/filuar.dart';
import 'package:cleanarchitecture/feature/auth/domin/repos/auth_reps.dart';

class LoginUseCase extends UseCase<UserModel, String, String> {
  final AuthRpos authRpos;
  LoginUseCase({
    required this.authRpos,
  });

  @override
  Future<Either<ErrorModel, UserModel>> call(String param, String parm2) async {
    return await authRpos.login(param ,parm2);
  }
}

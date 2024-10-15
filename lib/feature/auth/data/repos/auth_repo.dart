import 'package:cleanarchitecture/core/errors/excptions.dart';
import 'package:cleanarchitecture/core/errors/filuar.dart';
import 'package:cleanarchitecture/feature/auth/data/data_source/auth_local_data_source.dart';
import 'package:cleanarchitecture/feature/auth/data/data_source/auth_remote_data_source.dart';
import 'package:cleanarchitecture/feature/auth/data/models/user_model.dart';
import 'package:cleanarchitecture/feature/auth/domin/repos/auth_reps.dart';
import 'package:dartz/dartz.dart';

class AuthRepoImp extends AuthRpos {
  final AuthRemoteDataSource _authRemoteDataSource;
  final AuthLocalDataSource _authLocalDataSource;

  AuthRepoImp(this._authRemoteDataSource, this._authLocalDataSource);
  @override
  Future<Either<Filuar, UserModel>> login(String email, String password) async{
    try {
      final response = await _authRemoteDataSource.login(email, password);
      return right(response);
    } on ServerExpcptions catch (e) {
      return left(e.filuar);
    }
  }

  @override
  sendCodeOtp(String email) {
    // TODO: implement sendCodeOtp
    throw UnimplementedError();
  }

  @override
  Future<Either<Filuar, UserModel>> singin(
      String email, String password, String configPassword) {
    // TODO: implement singin
    throw UnimplementedError();
  }
}

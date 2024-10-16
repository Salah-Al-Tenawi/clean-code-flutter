import 'package:cleanarchitecture/core/errors/filuar.dart';
import 'package:cleanarchitecture/feature/auth/data/models/user_model.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRpos {
  // to do edit
  // replace Userentities by UserModel  

  //every method is use case in clean architicture but don't to need that here
  Future<Either< ErrorModel,UserModel>> login(String email, String password);
 Future<Either< ErrorModel,UserModel>> singin(String email, String password, String configPassword);
  sendCodeOtp(String email);

}

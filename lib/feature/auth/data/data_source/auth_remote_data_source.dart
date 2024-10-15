// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cleanarchitecture/core/api/api_end_points.dart';
import 'package:cleanarchitecture/core/api/dio_consumer.dart';
import 'package:cleanarchitecture/core/errors/excptions.dart';
import 'package:cleanarchitecture/feature/auth/data/models/user_model.dart';
import 'package:dartz/dartz.dart';
import 'package:get/get.dart';

abstract class AuthRemoteDataSource {
  final DioConSumer api;
  const AuthRemoteDataSource({
    required this.api,
  });
  Future<UserModel> login(String email, String password);
  Future<UserModel> singin(
      String email, String password, String configpassword);
}

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  AuthRemoteDataSourceImpl({required super.api});

  @override
  Future<UserModel> login(String email, String password) async {
    final response =await api.post("path", data: {
      ApiKey.email: email,
      ApiKey.password: password,
    });
    return UserModel.fromJson(response);
  }

  @override
  Future<UserModel> singin(
      String email, String password, String configpassword) {
    final response = api.post(path);
  }
}

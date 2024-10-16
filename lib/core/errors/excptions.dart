import 'package:cleanarchitecture/core/errors/filuar.dart';
import 'package:dio/dio.dart';

class ServerExpcptions implements Exception {
  final ErrorModel erroe;

  ServerExpcptions({required this.erroe});
}

void handelDioExcptions(DioException e) {
  switch (e.type) {
    case DioExceptionType.connectionTimeout:
      throw ServerExpcptions(erroe: ErrorModel.fromJson(e.response!.data));

    case DioExceptionType.sendTimeout:
      throw ServerExpcptions(erroe: ErrorModel.fromJson(e.response!.data));

    case DioExceptionType.receiveTimeout:
      throw ServerExpcptions(erroe: ErrorModel.fromJson(e.response!.data));

    case DioExceptionType.badCertificate:
      throw ServerExpcptions(erroe: ErrorModel.fromJson(e.response!.data));
    case DioExceptionType.cancel:
      throw ServerExpcptions(erroe: ErrorModel.fromJson(e.response!.data));
    case DioExceptionType.connectionError:
      throw ServerExpcptions(erroe: ErrorModel.fromJson(e.response!.data));
    case DioExceptionType.unknown:
      throw ServerExpcptions(erroe: ErrorModel.fromJson(e.response!.data));
    case DioExceptionType.badResponse:
      switch (e.response?.statusCode) {
        case 302:
          throw ServerExpcptions(erroe: ErrorModel.fromJson(e.response!.data));
        case 422:
          throw ServerExpcptions(erroe: ErrorModel.fromJson(e.response!.data));
        case 400:
          throw ServerExpcptions(erroe: ErrorModel.fromJson(e.response!.data));
        case 401:
          throw ServerExpcptions(erroe: ErrorModel.fromJson(e.response!.data));
        case 402:
          throw ServerExpcptions(erroe: ErrorModel.fromJson(e.response!.data));
        case 403:
          throw ServerExpcptions(erroe: ErrorModel.fromJson(e.response!.data));
        case 404:
          throw ServerExpcptions(erroe: ErrorModel.fromJson(e.response!.data));
        case 405:
          throw ServerExpcptions(erroe: ErrorModel.fromJson(e.response!.data));
        case 500:
          throw ServerExpcptions(erroe: ErrorModel.fromJson(e.response!.data));
        case 502:
          throw ServerExpcptions(erroe: ErrorModel.fromJson(e.response!.data));
        case 520:
          throw ServerExpcptions(erroe: ErrorModel.fromJson(e.response!.data));
      }
  }
}

import 'package:cleanarchitecture/core/errors/filuar.dart';
import 'package:dio/dio.dart';

class ServerExpcptions implements Exception {
  final Filuar filuar;

  ServerExpcptions({required this.filuar});
}

void handelDioExcptions(DioException e) {
  
  switch (e.type) {
    case DioExceptionType.connectionTimeout:
      throw ServerExpcptions(filuar: Filuar.fromJson(e.response!.data));

    case DioExceptionType.sendTimeout:
      throw ServerExpcptions(filuar: Filuar.fromJson(e.response!.data));

    case DioExceptionType.receiveTimeout:
      throw ServerExpcptions(filuar: Filuar.fromJson(e.response!.data));

    case DioExceptionType.badCertificate:
      throw ServerExpcptions(filuar: Filuar.fromJson(e.response!.data));

    case DioExceptionType.cancel:
      throw ServerExpcptions(filuar: Filuar.fromJson(e.response!.data));

    case DioExceptionType.connectionError:
      throw ServerExpcptions(filuar: Filuar.fromJson(e.response!.data));

    case DioExceptionType.unknown:
      throw ServerExpcptions(filuar: Filuar.fromJson(e.response!.data));

    case DioExceptionType.badResponse:
      switch (e.response?.statusCode) {
        case 302:
          throw 
      throw ServerExpcptions(filuar: Filuar.fromJson(e.response!.data));
        case 422:
          throw 
      throw ServerExpcptions(filuar: Filuar.fromJson(e.response!.data));
        case 400:
      throw ServerExpcptions(filuar: Filuar.fromJson(e.response!.data));
        case 401:
      throw ServerExpcptions(filuar: Filuar.fromJson(e.response!.data));
        case 402:
      throw ServerExpcptions(filuar: Filuar.fromJson(e.response!.data));
        case 403:
      throw ServerExpcptions(filuar: Filuar.fromJson(e.response!.data));
        case 404:
      throw ServerExpcptions(filuar: Filuar.fromJson(e.response!.data));
        case 405:
      throw ServerExpcptions(filuar: Filuar.fromJson(e.response!.data));
        case 500:
      throw ServerExpcptions(filuar: Filuar.fromJson(e.response!.data));
        case 502:
      throw ServerExpcptions(filuar: Filuar.fromJson(e.response!.data));
        case 520:
      throw ServerExpcptions(filuar: Filuar.fromJson(e.response!.data));
      }
  }
}

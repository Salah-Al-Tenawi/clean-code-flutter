import 'package:cleanarchitecture/core/route/name_route.dart';
import 'package:cleanarchitecture/feature/auth/presentation/views/login.dart';
import 'package:cleanarchitecture/feature/auth/presentation/views/singin.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>> appRoute = [ 
GetPage(name: NameRoute.login, page: () =>const Login()) ,
GetPage(name: NameRoute.singin, page: ()=>const Singin())

];
 
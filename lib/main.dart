import 'package:cleanarchitecture/core/route/app_route.dart';
import 'package:cleanarchitecture/core/route/name_route.dart';
import 'package:cleanarchitecture/core/them/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const CleanArchApp());
}

class CleanArchApp extends StatelessWidget {
  const CleanArchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "it's clean code with mvvm ",
      initialRoute: NameRoute.singin,
      getPages: appRoute,
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}

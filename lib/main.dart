import 'package:ecommerce_app/controllers/theme_controller.dart';
import 'package:ecommerce_app/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  Get.put(ThemeController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<ThemeController>();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fashion Store',
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: themeController.theme,
      defaultTransition: Transition.fade,
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/kalkulator_page.dart';
import 'package:flutter_application_1/pages/login_spoty_page.dart';
import 'package:flutter_application_1/kalkulator-page.dart';
import 'package:flutter_application_1/login-page.dart';
import 'package:flutter_application_1/loginclone-page.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "My Learning App",
      initialRoute: Routes.list_makanan,
      getPages: Routes.myPages,
    );
  }
}

import 'package:flutter_application_1/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("login api")),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: controller.txtUsername,
              decoration: InputDecoration(label: Text("input username")),
            ), // TextField
            TextField(
              controller: controller.txtPassword,
              decoration: InputDecoration(label: Text("input password")),
            ), // TextField
            OutlinedButton(
              onPressed: () {
                controller.login();
              },
              child: Text("login"),
            ), // OutlinedButton
          ],
        ), // Column
      ), // Center
    ); // Scaffold
  }
}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:flutter_application_1/routes.dart';

class LoginController extends GetxController {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  var isLoading = false.obs;

  //method
  void login() async {
    if (txtUsername.text.toString().isEmpty ||
        txtPassword.text.toString().isEmpty) {
      Get.snackbar("Error", "Username dan Password tidak boleh kosong");
    } else {
      try {
        isLoading.value =
            true; //sebagai tanda di page  nya muncul loading widget
        final url = Uri.parse("https://mediadwi.com/api/latihan/login");

        final response = await http.post(
          url,
          body: {
            "username": txtUsername.text.toString(),
            "password": txtPassword.text.toString(),
          },
        );

        isLoading.value = false;
        if (response.statusCode == 200) {
          final data = jsonDecode(response.body);
          if (data['status'] == true) {
            Get.snackbar("berhasil", data['message']);
            Get.offAllNamed(Routes.main_menu); //pindah ke halaman main menu
          } else {
            Get.snackbar("gagal", data['message']);
          }
        } else {
          Get.snackbar("gagal", "cek internet connection");
        }
      } catch (e) {
        isLoading.value = false;
        Get.snackbar("gagal", e.toString());
      }
    }
  }
}

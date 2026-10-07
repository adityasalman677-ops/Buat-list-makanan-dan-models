import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/custom_textfield.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:get/get.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  static const Color warnaUtama = Colors.teal;

  @override
  Widget build(BuildContext context) {
    TextEditingController txtNama = TextEditingController();
    TextEditingController txtJenisKelamin = TextEditingController();
    TextEditingController txtWa = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration Page"),
        centerTitle: true,
        backgroundColor: warnaUtama,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomTextfield(controller: txtNama, Myhint: "input name"),
            const SizedBox(height: 12),
            CustomTextfield(
              controller: txtJenisKelamin,
              Myhint: "input jenis kelamin",
            ),
            const SizedBox(height: 12),
            CustomTextfield(controller: txtWa, Myhint: "input no whatsapp"),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: warnaUtama,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 14),
              ),
              onPressed: () {
                Get.toNamed(
                  Routes.confirm_registration,
                  arguments: {
                    'name': txtNama.text,
                    'jenis_kelamin': txtJenisKelamin.text,
                    'no_wa': txtWa.text,
                  },
                );
              },
              child: const Text("Send"),
            ),
          ],
        ),
      ),
    );
  }
}

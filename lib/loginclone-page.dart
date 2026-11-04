import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/controller/login_controller.dart';

class LoginClone extends StatelessWidget {
  LoginClone({super.key});

  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        // tombol back dihapus karena ini halaman awal
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const Text(
              'Log in',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 32),

            _buildInputField(
              label: 'Email or username',
              hint: 'Enter your email',
              textController: controller.txtUsername,
            ),
            const SizedBox(height: 24),

            _buildInputField(
              label: 'Password',
              hint: 'Enter your password',
              textController: controller.txtPassword,
              isPassword: false,
            ),
            const SizedBox(height: 40),

            // Tombol Login dengan Obx
            Obx(
              () => controller.isLoading.value
                  ? const Center(child: CircularProgressIndicator())
                  : Center(
                      child: SizedBox(
                        width: 180,
                        height: 48,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF1DB954),
                            foregroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                          ),
                          onPressed: () {
                            controller.login();
                          },
                          child: const Text(
                            'Log in',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInputField({
    required String label,
    required String hint,
    required TextEditingController textController,
    bool isPassword = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: textController,
          obscureText: isPassword,
          style: const TextStyle(color: Colors.white),
          cursorColor: Colors.white,
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xFF333333),
            hintText: hint,
            hintStyle: const TextStyle(color: Colors.grey),
            contentPadding: const EdgeInsets.all(16.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4.0),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }
}

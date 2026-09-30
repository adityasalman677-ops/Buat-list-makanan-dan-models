import 'package:flutter/material.dart';

// Import file custom button Anda (sesuaikan jalurnya jika berbeda)
import '../components/ccustom_button.dart';

class LoginSpotyPage extends StatelessWidget {
  const LoginSpotyPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Controller untuk mengambil teks dari input
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white, size: 20),
          onPressed: () => Navigator.pop(context),
        ),
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

            // Menggunakan Reusable Widget CustomInputField
            CustomInputField(
              label: 'Email or username',
              hint: 'Enter your email',
              controller: emailController,
            ),
            const SizedBox(height: 24),

            CustomInputField(
              label: 'Password',
              hint: 'Enter your password',
              isPassword: true,
              controller: passwordController,
            ),
            const SizedBox(height: 40),

            // Menggunakan CustomButton yang sudah digabungkan di sini
            Center(
              child: SizedBox(
                width: 140,
                child: CustomButton(
                  text: 'Log in',
                  onPressed: () {
                    // Hasil input akan tercetak di konsol (Debug Console)
                    debugPrint('Email/Username: ${emailController.text}');
                    debugPrint('Password: ${passwordController.text}');
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Reusable Widget terpisah untuk Input Field
class CustomInputField extends StatelessWidget {
  final String label;
  final String hint;
  final bool isPassword;
  final TextEditingController controller;

  const CustomInputField({
    super.key,
    required this.label,
    required this.hint,
    this.isPassword = false,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
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
          controller: controller,
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

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConfirmRegPage extends StatelessWidget {
  const ConfirmRegPage({super.key});

  // Samakan dengan warna di halaman registrasi
  static const Color warnaUtama = Colors.teal;

  @override
  Widget build(BuildContext context) {
    final String nama = Get.arguments['name'];
    final String jenisKelamin = Get.arguments['jenis_kelamin'];
    final String noWa = Get.arguments['no_wa'];

    const style = TextStyle(fontSize: 20, color: warnaUtama);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Confirm Registration"),
        centerTitle: true,
        backgroundColor: warnaUtama,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Nama: $nama", style: style),
            const SizedBox(height: 8),
            Text("Jenis Kelamin: $jenisKelamin", style: style),
            const SizedBox(height: 8),
            Text("No WhatsApp: $noWa", style: style),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: warnaUtama,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 14),
              ),
              onPressed: () => Get.back(),
              child: const Text("Oke"),
            ),
          ],
        ),
      ),
    );
  }
}

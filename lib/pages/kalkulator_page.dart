import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/custom_textfield.dart';
import 'package:flutter_application_1/controller/kalkulator_controller.dart';
import 'package:get/get.dart';

class KalkulatorPage extends StatelessWidget {
  KalkulatorPage({super.key});

  final controller = Get.put(KalkulatorController());

  @override
  Widget build(BuildContext context) {
    TextEditingController txtAngka1 = TextEditingController();
    TextEditingController txtAngka2 = TextEditingController();

    // style tombol dibuat sekali, dipakai berulang
    final buttonStyle = ElevatedButton.styleFrom(
      backgroundColor: const Color.fromARGB(255, 0, 217, 255),
      foregroundColor: Colors.white,
      minimumSize: const Size(90, 45),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    );

    final resetStyle = ElevatedButton.styleFrom(
      backgroundColor: const Color.fromARGB(255, 0, 217, 255),
      foregroundColor: Colors.white,
      minimumSize: const Size(90, 45),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    );

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text("Kalkulator"),
        backgroundColor: const Color.fromARGB(255, 9, 181, 224),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomTextfield(controller: txtAngka1, Myhint: "input angka 1"),
            const SizedBox(height: 12),
            CustomTextfield(controller: txtAngka2, Myhint: "input angka 2"),
            const SizedBox(height: 24),

            Wrap(
              spacing: 12,
              runSpacing: 12,
              alignment: WrapAlignment.center,
              children: [
                ElevatedButton(
                  style: buttonStyle,
                  onPressed: () {
                    int angka1 = int.parse(txtAngka1.text);
                    int angka2 = int.parse(txtAngka2.text);
                    controller.tambah(angka1, angka2);
                  },
                  child: const Text("Tambah"),
                ),
                ElevatedButton(
                  style: buttonStyle,
                  onPressed: () {
                    int angka1 = int.parse(txtAngka1.text);
                    int angka2 = int.parse(txtAngka2.text);
                    controller.kurang(angka1, angka2);
                  },
                  child: const Text("Kurang"),
                ),
                ElevatedButton(
                  style: buttonStyle,
                  onPressed: () {
                    int angka1 = int.parse(txtAngka1.text);
                    int angka2 = int.parse(txtAngka2.text);
                    controller.kali(angka1, angka2);
                  },
                  child: const Text("Kali"),
                ),

                // Tombol Reset ditambahkan di sini
                ElevatedButton(
                  style: resetStyle,
                  onPressed: () {
                    controller.reset();
                  },
                  child: const Text("Reset"),
                ),

                ElevatedButton(
                  style: buttonStyle,
                  onPressed: () {
                    int angka1 = int.parse(txtAngka1.text);
                    int angka2 = int.parse(txtAngka2.text);
                    controller.bagi(angka1, angka2);
                  },
                  child: const Text("Bagi"),
                ),
              ],
            ),

            const SizedBox(height: 32),

            Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ), // <-- tutup BoxDecoration
              child: Obx(
                () => Text(
                  controller.hasil.toString(),
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
            ),
          ], // <-- tutup children Column
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/detail_makanan_controller.dart';
import 'package:get/get.dart';

class DetailMakananPage extends StatelessWidget {
  DetailMakananPage({super.key});

  final controller = Get.put(DetailMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.namaMakanan),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              controller.gambarMakanan,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 12),
            Text(
              controller.namaMakanan,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(
              "Rp. ${controller.hargaMakanan}",
              style: const TextStyle(fontSize: 18, color: Colors.red),
            ),
            const SizedBox(height: 20),
            const Text(
              "Asal Usul",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(controller.asalUsul),
          ],
        ),
      ),
    );
  }
}

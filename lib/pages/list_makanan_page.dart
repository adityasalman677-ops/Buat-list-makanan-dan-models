import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/list_makanan_controller.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:get/get.dart';

class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text("List Makanan"),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: Text(
              "Makanan Khas",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 260,
            child: ScrollConfiguration(
              // supaya bisa digeser dengan mouse di Chrome
              behavior: ScrollConfiguration.of(context).copyWith(
                dragDevices: {PointerDeviceKind.touch, PointerDeviceKind.mouse},
              ),
              child: Obx(
                () => ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  itemCount: controller.listMakanan.length,
                  itemBuilder: (context, index) {
                    final makanan = controller.listMakanan[index];
                    return SizedBox(
                      width: 180,
                      child: Card(
                        color: Colors.orange.shade50,
                        elevation: 3,
                        clipBehavior: Clip.antiAlias,
                        child: InkWell(
                          onTap: () => Get.toNamed(
                            Routes.detail_makanan,
                            arguments: {
                              'namaMakanan': makanan.namaMakanan,
                              'hargaMakanan': makanan.hargaMakanan,
                              'gambarMakanan': makanan.gambarMakanan,
                              'asalUsul': makanan.asalUsul,
                            },
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network(
                                makanan.gambarMakanan,
                                height: 150,
                                width: double.infinity,
                                fit: BoxFit.cover,
                                errorBuilder: (_, __, ___) => const SizedBox(
                                  height: 150,
                                  child: Center(
                                    child: Icon(Icons.fastfood, size: 40),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      makanan.namaMakanan,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      "Rp. ${makanan.hargaMakanan}",
                                      style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

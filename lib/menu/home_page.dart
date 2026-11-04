import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/list_makanan_controller.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ListMakananController());

    return Scaffold(
      appBar: AppBar(
        title: const Text("Aplikasi Menu Makanan"),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 20, 16, 12),
            child: Text("List Makanan", style: TextStyle(fontSize: 22)),
          ),
          SizedBox(
            height: 320,
            child: ScrollConfiguration(
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
                      width: 200,
                      child: Card(
                        color: Colors.orange.shade50,
                        elevation: 2,
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
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
                                height: 220,
                                width: double.infinity,
                                fit: BoxFit.cover,
                                errorBuilder: (_, __, ___) => const SizedBox(
                                  height: 220,
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
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      "Rp. ${makanan.hargaMakanan}",
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green,
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

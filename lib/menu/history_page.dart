import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("History"),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: const Center(child: Text("Ini history page")),
    );
  }
}

import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String Myhint;

  const CustomTextfield({
    super.key,
    required this.controller,
    required this.Myhint,
  });

  //list variabel
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        hint: Text(Myhint),
      ),
    );
  }
}

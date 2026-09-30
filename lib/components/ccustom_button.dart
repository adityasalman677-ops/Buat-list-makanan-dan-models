import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget? icon;
  final String text;
  final Function()
  onPressed; // Menggunakan Function() biasa, bukan VoidCallback

  const CustomButton({
    super.key,
    this.icon,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: InkWell(
        onTap: onPressed, // Aksi saat tombol ditekan
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: const Color(0xFF1DB954), // Warna hijau Spotify
            borderRadius: BorderRadius.circular(24),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null) ...[icon!, const SizedBox(width: 8)],
              Text(
                text,
                style: const TextStyle(
                  color: Colors.black, // Warna teks di dalam tombol
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

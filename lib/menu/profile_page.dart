import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  Widget _statItem(String angka, String label) {
    return Column(
      children: [
        Text(
          angka,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(label),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("adyyt_slmn"),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.orange,
                  child: Icon(Icons.person, size: 40, color: Colors.white),
                ),
                _statItem("9", "Posts"),
                _statItem("120", "Followers"),
                _statItem("85", "Following"),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Adyyt_slmn",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Text(" Suka makan enak"),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                child: const Text("Edit Profile"),
              ),
            ),
          ),  
        ],
      ),
    );
  }
}

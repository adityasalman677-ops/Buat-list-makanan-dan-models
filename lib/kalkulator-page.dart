import 'package:flutter/material.dart';

class KalkulatorPAge extends StatefulWidget {
  const new({super.key});

  @override
  State<KalkulatorPAge> createState() => _KalkulatorPAgeState();
}

class _KalkulatorPAgeState extends State<KalkulatorPAge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kalkulator")),
      body: Column(
        children: [
          Text(
            "welcome to kalkulator page",
            style: TextStyle(
              fontSize: 20,
              color: Colors.blue,
              fontStyle: FontStyle.italic,
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(hint: Text("input Angka 1")),
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(hint: Text("input Angka 2")),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: Text("+")),
              ElevatedButton(onPressed: () {}, child: Text("_")),
              ElevatedButton(onPressed: () {}, child: Text("X")),
              ElevatedButton(onPressed: () {}, child: Text("/")),
            ],
          ),
        ],
      ),
    );
  }
}

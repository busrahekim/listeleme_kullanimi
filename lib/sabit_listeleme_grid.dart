import 'package:flutter/material.dart';

class SabitListelemeGrid extends StatefulWidget {
  const SabitListelemeGrid({Key? key}) : super(key: key);

  @override
  _SabitListelemeGridState createState() => _SabitListelemeGridState();
}

class _SabitListelemeGridState extends State<SabitListelemeGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sabit listeleme"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 2 /
            1, // sol ve sagdaki değerler kenarları temsil ediyor 2:Genişlik 1: yükseklik
        children: [
          GestureDetector(
            onTap: () {
              print("clicked");
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.star, color: Colors.black87),
                    Text("Star"),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              print("clicked");
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.wb_sunny, color: Colors.black87),
                    Text("Sun"),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              print("clicked");
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.brightness_2, color: Colors.black87),
                    Text("Moon"),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

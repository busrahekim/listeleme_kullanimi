import 'package:flutter/material.dart';

class SabitListeleme extends StatefulWidget {
  const SabitListeleme({Key? key}) : super(key: key);

  @override
  _SabitListelemeState createState() => _SabitListelemeState();
}

class _SabitListelemeState extends State<SabitListeleme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sabit listeleme"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.wb_sunny),
            title: Text("Sunny"),
            subtitle: Text("So hot"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              print("clicked");
            },
          ),
          ListTile(
            leading: Icon(Icons.wb_cloudy),
            title: Text("Cloudy"),
            subtitle: Text("A bit cold"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              print("clicked");
            },
          ),
          GestureDetector(
            onTap: () {
              print("clicked");
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Text("Star"),
                    Spacer(),
                    Icon(Icons.keyboard_arrow_right, color: Colors.black87),
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

import 'package:flutter/material.dart';

class AppBarKullanimi extends StatefulWidget {
  const AppBarKullanimi({Key? key}) : super(key: key);

  @override
  _AppBarKullanimiState createState() => _AppBarKullanimiState();
}

class _AppBarKullanimiState extends State<AppBarKullanimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Başlık",
              style: TextStyle(fontSize: 16),
            ),
            Text(
              "AltBaşlık",
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
        backgroundColor: Colors.red,
        leading: IconButton(
          onPressed: () {
            print("leading tıklandı");
          },
          icon: const Icon(Icons.dehaze),
        ),
        actions: [
          TextButton(
            onPressed: () {
              print("tıklandı");
            },
            child: const Text(
              "Çıkış",
              style: TextStyle(color: Colors.white),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.info_outline),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
          PopupMenuButton(
            child: const Icon(Icons.more_vert),
            itemBuilder: (context) => const [
              PopupMenuItem(
                child: Text("sil"),
                value: 1,
              ),
              PopupMenuItem(
                child: Text("güncelle"),
                value: 2,
              ),
            ],
            onSelected: (menuItemValue) {
              if (menuItemValue == 1) {
                print("sil");
              }
              if (menuItemValue == 2) {
                print("güncelle");
              }
            },
          ),
        ],
      ),
      body: Center(),
    );
  }
}

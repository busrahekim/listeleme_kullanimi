import 'package:flutter/material.dart';

import 'Filmler.dart';

class FilmDetaySayfa extends StatefulWidget {
  Filmler filmler;

  FilmDetaySayfa({required this.filmler});

  @override
  _FilmDetaySayfaState createState() => _FilmDetaySayfaState();
}

class _FilmDetaySayfaState extends State<FilmDetaySayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("${widget.filmler.filmAdi}"),
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("film_resimler/${widget.filmler.filmResimAdi}"),
              Text(
                "${widget.filmler.filmFiyat} ₺",
                style: const TextStyle(fontSize: 48, color: Colors.blue),
              ),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.redAccent),
                  onPressed: () {},
                  child: const Text(
                    "KİRALA",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

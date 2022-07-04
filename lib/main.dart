import 'package:flutter/material.dart';
import 'package:listeleme_kullanimi/appbar_kullanimi.dart';
import 'package:listeleme_kullanimi/film_uyg/filmSayfa.dart';
import 'package:listeleme_kullanimi/sabit_listeleme.dart';
import 'package:listeleme_kullanimi/sabit_listeleme_grid.dart';
import 'package:listeleme_kullanimi/yemek_uyg/yemekSayfa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FilmSayfa(),
    );
  }
}

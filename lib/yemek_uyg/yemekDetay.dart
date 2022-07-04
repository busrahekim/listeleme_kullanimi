import 'package:flutter/material.dart';
import 'package:listeleme_kullanimi/yemek_uyg/yemekler.dart';

class YemekDetaySayfa extends StatefulWidget {
  Yemekler yemek;

  YemekDetaySayfa({required this.yemek});

  @override
  _YemekDetaySayfaState createState() => _YemekDetaySayfaState();
}

class _YemekDetaySayfaState extends State<YemekDetaySayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("${widget.yemek.yemekAdi}"),
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("yemek_resimler/${widget.yemek.yemekResimAdi}"),
              Text(
                "${widget.yemek.yemekFiyat} ₺",
                style: const TextStyle(fontSize: 48, color: Colors.blue),
              ),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.orange),
                  onPressed: () {},
                  child: const Text(
                    "Sipariş Ver",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:listeleme_kullanimi/yemek_uyg/yemekDetay.dart';
import 'package:listeleme_kullanimi/yemek_uyg/yemekler.dart';

class YemekSayfasi extends StatefulWidget {
  const YemekSayfasi({Key? key}) : super(key: key);

  @override
  _YemekSayfasiState createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  Future<List<Yemekler>> yemekleriGetir() async {
    var yemekListesi = <Yemekler>[];

    var y1 = Yemekler(
        yemekId: 1,
        yemekAdi: "Köfte",
        yemekResimAdi: "kofte.png",
        yemekFiyat: 25.99);
    var y2 = Yemekler(
        yemekId: 2,
        yemekAdi: "Ayran",
        yemekResimAdi: "ayran.png",
        yemekFiyat: 6.0);
    var y3 = Yemekler(
        yemekId: 3,
        yemekAdi: "Fanta",
        yemekResimAdi: "fanta.png",
        yemekFiyat: 7.0);
    var y4 = Yemekler(
        yemekId: 4,
        yemekAdi: "Makarna",
        yemekResimAdi: "makarna.png",
        yemekFiyat: 35.99);
    var y5 = Yemekler(
        yemekId: 5,
        yemekAdi: "Kadayıf",
        yemekResimAdi: "kadayif.png",
        yemekFiyat: 20.0);
    var y6 = Yemekler(
        yemekId: 6,
        yemekAdi: "Baklava",
        yemekResimAdi: "baklava.png",
        yemekFiyat: 28.99);

    yemekListesi.add(y1);
    yemekListesi.add(y2);
    yemekListesi.add(y3);
    yemekListesi.add(y4);
    yemekListesi.add(y5);
    yemekListesi.add(y6);

    return yemekListesi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Yemekler"),
        backgroundColor: Colors.orange,
      ),
      body: FutureBuilder<List<Yemekler>>(
        future: yemekleriGetir(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var yListe = snapshot.data;
            return ListView.builder(
              itemCount: yListe!.length,
              itemBuilder: (context, index) {
                var y = yListe[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => YemekDetaySayfa(yemek: y)));
                  },
                  child: Card(
                    child: Row(
                      children: [
                        SizedBox(
                            width: 150,
                            height: 150,
                            child: Image.asset(
                                "yemek_resimler/${y.yemekResimAdi}")),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${y.yemekAdi}",
                              style: const TextStyle(fontSize: 25),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            Text(
                              "${y.yemekFiyat} ₺",
                              style: const TextStyle(
                                  fontSize: 20, color: Colors.blue),
                            ), // altgr + t = ₺
                          ],
                        ),
                        const Spacer(),
                        const Icon(Icons.keyboard_arrow_right),
                      ],
                    ),
                  ),
                );
              },
            );
          } else {
            return Center();
          }
        },
      ),
    );
  }
}

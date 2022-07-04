import 'package:flutter/material.dart';

import 'Filmler.dart';
import 'filmDetay.dart';

class FilmSayfa extends StatefulWidget {
  const FilmSayfa({Key? key}) : super(key: key);

  @override
  _FilmSayfaState createState() => _FilmSayfaState();
}

class _FilmSayfaState extends State<FilmSayfa> {
  Future<List<Filmler>> filmleriGetir() async {
    var filmListesi = <Filmler>[];

    var y1 = Filmler(
        filmId: 1,
        filmAdi: "Anadoluda",
        filmResimAdi: "anadoluda.png",
        filmFiyat: 15.99);

    var y2 = Filmler(
        filmId: 2,
        filmAdi: "Django",
        filmResimAdi: "django.png",
        filmFiyat: 9.99);
    var y3 = Filmler(
        filmId: 3,
        filmAdi: "Inception",
        filmResimAdi: "inception.png",
        filmFiyat: 7.99);
    var y4 = Filmler(
        filmId: 4,
        filmAdi: "ınterstellar",
        filmResimAdi: "interstellar.png",
        filmFiyat: 21.0);
    var y5 = Filmler(
        filmId: 5,
        filmAdi: "The Hateful Eight",
        filmResimAdi: "thehatefuleight.png",
        filmFiyat: 5.99);
    var y6 = Filmler(
        filmId: 6,
        filmAdi: "The Pianist",
        filmResimAdi: "thepianist.png",
        filmFiyat: 17.99);
    filmListesi.add(y1);
    filmListesi.add(y2);
    filmListesi.add(y3);
    filmListesi.add(y4);
    filmListesi.add(y5);
    filmListesi.add(y6);

    return filmListesi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Filmler"),
        backgroundColor: Colors.deepPurple,
      ),
      body: FutureBuilder<List<Filmler>>(
        future: filmleriGetir(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var yListe = snapshot.data;
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 2 / 3.5),
              itemCount: yListe!.length,
              itemBuilder: (context, index) {
                var y = yListe[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FilmDetaySayfa(filmler: y)));
                  },
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("film_resimler/${y.filmResimAdi}"),
                        ),
                        Text(
                          "${y.filmAdi}",
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${y.filmFiyat} ₺",
                          style:
                              const TextStyle(fontSize: 16, color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center();
          }
        },
      ),
    );
  }
}

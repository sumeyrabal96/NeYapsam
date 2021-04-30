import 'package:flutter/material.dart';
import 'package:ne_yapayim_app/i%C3%A7e%C3%A7eceklistesi.dart';

import 'film.dart';
import 'içecek.dart';

class FilmListesi extends StatefulWidget {
  @override
  _FilmListesiState createState() => _FilmListesiState();
}

class _FilmListesiState extends State<FilmListesi> {

  Future<List<Film>> tumFilmler() async {

    var filmlerListesi=await List<Film>();


    var f1 = Film(1,"Bird box");
    var f2 = Film(2,"Cube");
    var f3 = Film(3,"I'm Legend");
    var f4 = Film(4,"Hary Potter");
    var f5 = Film(5,"Yüzüklerin efendisi");
    var f6 = Film(6,"Lucy");
    var f7 = Film(7,"Alive");
    var f8 = Film(8,"Rambo");
    var f9 = Film(9,"Hızlı ve öfkeli");
    var f10 = Film(10,"Esaretin bedeli");

    filmlerListesi.add(f1);
    filmlerListesi.add(f2);
    filmlerListesi.add(f3);
    filmlerListesi.add(f4);
    filmlerListesi.add(f5);
    filmlerListesi.add(f6);
    filmlerListesi.add(f7);
    filmlerListesi.add(f8);
    filmlerListesi.add(f9);
    filmlerListesi.add(f10);

    return filmlerListesi;
    

  } 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ne izlesem?"),
        elevation: 0,
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: tumFilmler(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var filmlerListesi = snapshot.data;
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 5 / 1,
              ),
              itemCount: filmlerListesi.length,
              itemBuilder: (context, indeks) {
                var film = filmlerListesi[indeks];
                return Card(
                  elevation: 1,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:32.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(film.ad,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 18)),
                            ]),
                      ),
                    ],
                  ),
                );
              },
            );
          } else {
            return Center(child: CircularProgressIndicator(),);
          }
        },
      ),
    );
  }
}
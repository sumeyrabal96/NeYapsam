import 'package:flutter/material.dart';

import 'müzik.dart';

class MuzikListesiSayfa extends StatefulWidget {
  @override
  _MuzikListesiSayfaState createState() => _MuzikListesiSayfaState();
}

class _MuzikListesiSayfaState extends State<MuzikListesiSayfa> {

  Future<List<Muzik>> tumMuzikler() async {

    var muzikListesi = await List<Muzik>();

    var m1 = Muzik(1,"Stan");
    var m2 = Muzik(2,"Martılar");
    var m3 = Muzik(3,"Dua");
    var m4 = Muzik(4,"Güya");
    var m5 = Muzik(5,"Whoopty");
    var m6 = Muzik(6,"Montero");
    var m7 = Muzik(7,"Kahrettim");
    var m8 = Muzik(8,"Toy");
    var m9 = Muzik(9,"Gel");
    var m10 = Muzik(10,"Zemin");

    muzikListesi.add(m1);
    muzikListesi.add(m2);
    muzikListesi.add(m3);
    muzikListesi.add(m4);
    muzikListesi.add(m5);
    muzikListesi.add(m6);
    muzikListesi.add(m7);
    muzikListesi.add(m8);
    muzikListesi.add(m9);
    muzikListesi.add(m10);

    return muzikListesi;

  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Müzikler"),
        centerTitle: true,
        elevation: 0,
      ),
      body: FutureBuilder(
        future: tumMuzikler(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var muzikListesi = snapshot.data;
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 5 / 1,
              ),
              itemCount: muzikListesi.length,
              itemBuilder: (context, indeks) {
                var muzik = muzikListesi[indeks];
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
                              Text(muzik.ad,
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
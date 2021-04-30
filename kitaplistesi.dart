import 'package:flutter/material.dart';

import 'kitap.dart';

class KitapListesiSayfa extends StatefulWidget {
  @override
  _KitapListesiSayfaState createState() => _KitapListesiSayfaState();
}

class _KitapListesiSayfaState extends State<KitapListesiSayfa> {

  Future<List<Kitap>> tumKitaplar() async {

    var kitapListesi = await List<Kitap>();

    var k1 = Kitap(1,"Suç ve ceza");
    var k2 = Kitap(2,"Sefiller");
    var k3 = Kitap(3,"1984");
    var k4 = Kitap(4,"Ay ışığı sokağı");
    var k5 = Kitap(5,"Küçük prens");
    var k6 = Kitap(6,"Bir ömür nasıl geçer");
    var k7 = Kitap(7,"Nutuk");
    var k8 = Kitap(8,"Hayvan çiftliği");
    var k9 = Kitap(9,"Labirent");
    var k10 = Kitap(10,"Sefiller");

    kitapListesi.add(k1);
    kitapListesi.add(k2);
    kitapListesi.add(k3);
    kitapListesi.add(k4);
    kitapListesi.add(k5);
    kitapListesi.add(k6);
    kitapListesi.add(k7);
    kitapListesi.add(k8);
    kitapListesi.add(k9);
    kitapListesi.add(k10);

    return kitapListesi;



  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kitaplar"),
        centerTitle: true,
        elevation: 0,
      ),
      body: FutureBuilder(
        future: tumKitaplar(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var kitapListesi = snapshot.data;
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 5 / 1,
              ),
              itemCount: kitapListesi.length,
              itemBuilder: (context, indeks) {
                var kitap = kitapListesi[indeks];
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
                              Text(kitap.ad,
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
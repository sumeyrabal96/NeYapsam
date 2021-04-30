import 'package:flutter/material.dart';

import 'içecek.dart';

class IcecekListesiSayfa extends StatefulWidget {
  @override
  _IcecekListesiSayfaState createState() => _IcecekListesiSayfaState();
}

class _IcecekListesiSayfaState extends State<IcecekListesiSayfa> {

  Future<List<Icecek>> tumIcecekler() async {

    var icecekListesi=await List<Icecek>();

    var i1 = Icecek(1,"Kola");
    var i2 = Icecek(2,"Gazoz");
    var i3 = Icecek(3,"Soda");
    var i4 = Icecek(4,"Limonata");
    var i5 = Icecek(5,"Meyve suyu");
    var i6 = Icecek(6,"Su");
    var i7 = Icecek(7,"Çay");
    var i8 = Icecek(8,"Kahve");
    var i9 = Icecek(9,"Ayran");
    var i10 = Icecek(10,"Süt");

    icecekListesi.add(i1);
    icecekListesi.add(i2);
    icecekListesi.add(i3);
    icecekListesi.add(i4);
    icecekListesi.add(i5);
    icecekListesi.add(i6);
    icecekListesi.add(i7);
    icecekListesi.add(i8);
    icecekListesi.add(i9);
    icecekListesi.add(i10);

    return icecekListesi;

  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("İçecekler"),
        centerTitle: true,
        elevation: 0,
      ),
      body:FutureBuilder(
        future: tumIcecekler(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var icecekListesi = snapshot.data;
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 5 / 1,
              ),
              itemCount: icecekListesi.length,
              itemBuilder: (context, indeks) {
                var icecek = icecekListesi[indeks];
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
                              Text(icecek.ad,
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
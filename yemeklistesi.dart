import 'package:flutter/material.dart';
import 'package:ne_yapayim_app/yemek.dart';

class YemekListesiSayfa extends StatefulWidget {
  @override
  _YemekListesiSayfaState createState() => _YemekListesiSayfaState();
}

class _YemekListesiSayfaState extends State<YemekListesiSayfa> {

  Future<List<Yemek>> tumYemekler() async {

    var yemekListesi=await List<Yemek>();

    var y1 = Yemek(1,"Hamburger");
    var y2 = Yemek(2,"Pilav");
    var y3 = Yemek(3,"Tost");
    var y4 = Yemek(4,"Makarna");
    var y5 = Yemek(5,"Karnıyarık");
    var y6 = Yemek(6,"Lahmacun");
    var y7 = Yemek(7,"Tavuk sote");
    var y8 = Yemek(8,"Sarma");
    var y9 = Yemek(9,"Mantı");
    var y10 = Yemek(10,"Kurufasülye");

    yemekListesi.add(y1);
    yemekListesi.add(y2);
    yemekListesi.add(y3);
    yemekListesi.add(y4);
    yemekListesi.add(y5);
    yemekListesi.add(y6);
    yemekListesi.add(y7);
    yemekListesi.add(y8);
    yemekListesi.add(y9);
    yemekListesi.add(y10);

    return yemekListesi;

  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Yemekler"),
        centerTitle: true,
        elevation: 0,
      ),
      body: FutureBuilder(
        future: tumYemekler(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var yemekListesi = snapshot.data;
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 5 / 1,
              ),
              itemCount: yemekListesi.length,
              itemBuilder: (context, indeks) {
                var yemek = yemekListesi[indeks];
                return GestureDetector(
                  onTap: () {
                    
                    },
                    child: Card(
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
                                  Text(yemek.ad,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold, fontSize: 18)),
                                ]),
                          ),
                        ],
                      ),
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
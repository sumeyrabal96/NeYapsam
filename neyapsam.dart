import 'package:flutter/material.dart';
import 'package:ne_yapayim_app/nedinlesem.dart';
import 'package:ne_yapayim_app/nei%C3%A7sem.dart';
import 'package:ne_yapayim_app/neizlesem.dart';
import 'package:ne_yapayim_app/neokusam.dart';
import 'package:ne_yapayim_app/neyesem.dart';

class NeYapsamSayfa extends StatefulWidget {

  var ad;
  var soyad;

  NeYapsamSayfa({this.ad,this.soyad});

  @override
  _NeYapsamSayfaState createState() => _NeYapsamSayfaState();
}

class _NeYapsamSayfaState extends State<NeYapsamSayfa> {

  @override
  Widget build(BuildContext context) {

    var ad=widget.ad;
    var soyad=widget.soyad;

    return Scaffold(
      appBar: AppBar(
        title: Text("Merhaba $ad $soyad"),
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 300,
                      height: 90,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(width:0.8,color:Colors.blue)
                        ),
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Ne yesem?",style: TextStyle(fontSize: 26,color: Colors.blue)),
                            SizedBox(
                              width: 60,
                              height: 60,
                              child: Image.asset("resimler/yemek.png"))
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => NeYesemSayfa(ad: ad,soyad: soyad),));
                        },
                      ),
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 300,
                      height: 90,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(width:0.8,color:Colors.red)
                        ),
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Ne içsem?",style: TextStyle(fontSize: 26,color: Colors.red)),
                            SizedBox(
                              width: 60,
                              height: 60,
                              child: Image.asset("resimler/içecek.png"))
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => NeIcsemSayfa(ad: ad,soyad: soyad)));
                        },
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 300,
                      height: 90,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(width:0.8,color:Colors.green)
                        ),
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Ne izlesem?",style: TextStyle(fontSize: 26,color: Colors.green)),
                            SizedBox(
                              width: 60,
                              height: 60,
                              child: Image.asset("resimler/film.png"))
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => NeIzlesemSayfa(ad: ad,soyad: soyad)));
                        },
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 300,
                      height: 90,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(width:0.8,color:Colors.blue)
                        ),
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Ne dinlesem?",style: TextStyle(fontSize: 26,color: Colors.blue)),
                            SizedBox(
                              width: 60,
                              height: 60,
                              child: Image.asset("resimler/müzik.png"))
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => NeDinlesemSayfa(ad: ad,soyad: soyad)));
                        },
                      ),
                    ),
                  ),
                  

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 300,
                      height: 90,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(width:0.8,color:Colors.orange)
                        ),
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Ne okusam?",style: TextStyle(fontSize: 26,color: Colors.orange)),
                            SizedBox(
                              width: 60,
                              height: 60,
                              child: Image.asset("resimler/kitap.png"))
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => NeOkusamSayfa(ad: ad,soyad: soyad)));
                        },
                      ),
                    ),
                  ),
          ], 
        )
      ),
    );
  }
}
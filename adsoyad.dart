import 'package:flutter/material.dart';
import 'package:ne_yapayim_app/neyapsam.dart';

class AdSoyadSayfa extends StatefulWidget {
  @override
  _AdSoyadSayfaState createState() => _AdSoyadSayfaState();
}

class _AdSoyadSayfaState extends State<AdSoyadSayfa> {

  var tfad = TextEditingController();
  var tfsoyad = TextEditingController();


  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text("Ad soyad"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 24),
              child: TextField(
                  textAlign: TextAlign.center,
                  controller: tfad,
                  decoration: InputDecoration(
                    hintText: "Adınızı giriniz",
                    labelText: "Ad",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  )),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 24),
              child: TextField(
                  textAlign: TextAlign.center,
                  controller: tfsoyad,
                  decoration: InputDecoration(
                    hintText: "Soyadınızı giriniz",
                    labelText: "Soyad",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  )),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    width: 250,
                    height: 60,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: Colors.blue,width: 1)),
                      onPressed: () {
                        if (tfad.text == "" || tfsoyad.text == "") {
                          scaffoldKey.currentState.showSnackBar(SnackBar(
                            backgroundColor: Colors.blue,
                            duration: Duration(seconds: 2),
                            content: Text(
                              "Bu kısmımlar boş bırakılamaz.",
                              style: TextStyle(fontSize: 18),
                            ),
                          ));
                        } else {
                          String ad=tfad.text;
                          String soyad=tfsoyad.text;
                          Navigator.push(context, MaterialPageRoute(builder: (context) => NeYapsamSayfa(ad: ad,soyad: soyad,)));
                        }
                      },
                      color: Colors.white,
                      child: Text(
                        "Başla",
                        style: TextStyle(fontSize: 22, color: Colors.blue),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
import "package:flutter/material.dart";
import 'package:ne_yapayim_app/nas%C4%B1lkullan%C4%B1l%C4%B1r.dart';

import 'adsoyad.dart';
import 'hakkında.dart';

class GirisSayfa extends StatefulWidget {
  @override
  _GirisSayfaState createState() => _GirisSayfaState();
}

class _GirisSayfaState extends State<GirisSayfa> {
  @override
  Widget build(BuildContext context) {                                         
    return Scaffold(
      appBar: AppBar(
        title: Text("Ne yapsam?"),
        centerTitle: true,                                                     
        elevation: 0,                 
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom:24.0),
              child: Column(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 250,
                    height: 250,
                    child: Image.asset("resimler/what.png")
                    ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 300,
                      height: 75,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(width:1,color:Colors.blue)
                        ),
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Başla",style: TextStyle(fontSize: 24,color: Colors.blue)),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => AdSoyadSayfa()));
                        },
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 300,
                      height: 75,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(width:1,color:Colors.red)
                        ),
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Nasıl kullanılır?",style: TextStyle(fontSize: 24,color: Colors.red)),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => NasilKullanilirSayfa()));
                        },
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 300,
                      height: 75,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(width:1,color:Colors.green)
                        ),
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Hakkında",style: TextStyle(fontSize: 24,color: Colors.green),),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HakkindaSayfa()));
                        },
                      ),
                    ),
                  ),

                ],

              ),
            )
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class NasilKullanilirSayfa extends StatefulWidget {
  @override
  _NasilKullanilirSayfaState createState() => _NasilKullanilirSayfaState();
}

class _NasilKullanilirSayfaState extends State<NasilKullanilirSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nasıl Kullanılır?"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 340,
              height: 300,
              child: Center(child: Text("Ne yapsam, sizin kararsızlıklarınızı ortadan kaldıran bir uygulamadır.Ne yapsam sayesinde yiyeceğiniz yemeğe,içeceğiniz içeçeğe ,dinleyeceğiniz müziğe,izleyeceğiniz filme ve okuyacağınız kitaba karar verebilirsiniz.",style: TextStyle(fontSize: 23),textAlign: TextAlign.center,))),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 150,
                    height: 55,
                    child: FlatButton(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side:BorderSide(width:1,color:Colors.black)
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.arrow_back_outlined),
                          Text("Anladım",style: TextStyle(fontSize: 20),),
                        ],
                      ),
                    ),
                  ),
                )
          ],
        ),
      ),
    );
  }
}
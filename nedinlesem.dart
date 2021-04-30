import 'dart:math';

import 'package:flutter/material.dart';

import 'muziklistesi.dart';

class NeDinlesemSayfa extends StatefulWidget {

  var ad;
  var soyad;

  NeDinlesemSayfa({this.ad,this.soyad});

  @override
  _NeDinlesemSayfaState createState() => _NeDinlesemSayfaState();
}

class _NeDinlesemSayfaState extends State<NeDinlesemSayfa> {

  var rastgeleSayi;
  var muziklistem=["Stan","Martılar","Dua","Güya","Whoopty","Montero","Kahrettim","Toy","Gel","Zemin"];

  @override
  void initState() {
    super.initState();

    rastgeleSayi=Random().nextInt(10);//0 - 10

  }
  
  @override
  Widget build(BuildContext context) {

    var muzik=muziklistem[rastgeleSayi];
    var ad=widget.ad;

    return Scaffold(
      appBar: AppBar(
        title: Text("Ne Dinlesem?"),
        centerTitle: true,
        elevation: 0,

        actions: [
          IconButton(
            icon: Icon(Icons.list),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MuzikListesiSayfa()));
            },
          )
        ],

      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom:48.0),
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children:[
              Padding(
                padding: const EdgeInsets.only(bottom:24.0),
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.asset("resimler/müzik.png")
                  ),
              ),
              SizedBox(
                width: 330,
                height: 180,
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side:BorderSide(color: Colors.black,width: 1)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text("Merhaba, $ad, bizce bugün dinlemen gereken şarkı",style: TextStyle(fontSize: 24),textAlign: TextAlign.center,),
                      ),
                      Text("' "+"$muzik"+" '",style: TextStyle(color: Colors.blue,fontSize: 32)),
                    ],
                  ))
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  width: 200,
                  height: 60,
                  child: FlatButton(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(width:1,color:Colors.black)
                    ),
                    child: Text("Yeni tavsiye ver",style: TextStyle(fontSize: 20),),
                    onPressed: () {
                      setState(() {
                        rastgeleSayi=Random().nextInt(10);//0 - 10                    
                      });
                    },
                  ),
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}
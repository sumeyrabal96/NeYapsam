import 'package:flutter/material.dart';

class HakkindaSayfa extends StatefulWidget {
  @override
  _HakkindaSayfaState createState() => _HakkindaSayfaState();
}

class _HakkindaSayfaState extends State<HakkindaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hakkında"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 340,
              child: Center(child: Text("Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında 193004075 numaralı öğrenci Sümeyra Bal tarafından 30 Nisan 2021 günü yapılmıştır.",style: TextStyle(fontSize: 23),textAlign: TextAlign.center))),

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
import 'package:flutter/material.dart';
import 'package:ne_yapayim_app/giris.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ne yapsam?',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GirisSayfa()
    );
  }
}


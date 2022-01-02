import 'package:detector/halaman_utama.dart';
import 'package:detector/sukses.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class Hasil extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Halaman Scan Sukses',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: FirstScreen(), // Panggil FirstScreen di sini
    );
  }
}

class FirstScreen extends StatelessWidget {
  String _kondisi = "Wheezing terdeteksi";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Halaman_Utama();
              }));
              // Aksi ketika button diklik
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          title: Text('ESCAPED'),
        ),
        body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 40, right: 60, left: 60),
                  child: Text(
                    'HASIL DIAGNOSIS',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
                Container(
                  //height: 30,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 90, right: 90, top: 30),
                        child: Image.asset('images/gambartes.jpeg'),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 5.0),
                  child: Text(
                    'Kondisi     : $_kondisi',
                    style: TextStyle(fontSize: 22.0),
                  ),
                ),
              ]),
        ));
  }
}

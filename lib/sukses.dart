import 'package:detector/halaman_utama.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class Sukses extends StatelessWidget {
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
  final database = FirebaseDatabase.instance.reference();
  @override
  Widget build(BuildContext context) {
    final hasilRef = database.child('/hasil');

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
                  padding: EdgeInsets.all(60),
                  child: Text(
                    'REKAM SUARA SUKSES !',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50, left: 70, right: 70),
                  child: ElevatedButton(
                    child: Text(
                      'TAMPILKAN HASIL DIAGNOSIS',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 5.0),
                  child: Column(children: [
                    ElevatedButton(
                      onPressed: () async {
                        try {
                          await hasilRef
                              .set({'description': 'Wheezing terdeteksi'});
                          print("wheezing terdeteksi");
                        } catch (e) {
                          print('Ada kesalahan! $e');
                        }
                      },
                      child: Text('Tampilkan'),
                    ),
                  ]),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 5.0),
                  child: Column(children: [
                    ElevatedButton(
                      onPressed: () async {
                        try {
                          await hasilRef.set(
                              {'description': 'Wheezing tidak terdeteksi'});
                          print("wheezing tidak terdeteksi");
                        } catch (e) {
                          print('Ada kesalahan! $e');
                        }
                      },
                      child: Text('Tampilkan tidak'),
                    ),
                  ]),
                ),
              ]),
        ));
  }
}

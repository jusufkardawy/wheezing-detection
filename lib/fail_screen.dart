import 'package:detector/halaman_utama.dart';
import 'package:detector/sukses.dart';
import 'package:flutter/material.dart';

class Fail_Screen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Halaman Scan Gagal',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: FirstScreen(), // Panggil FirstScreen di sini
    );
  }
}

class FirstScreen extends StatelessWidget {
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(65),
                  child: Text(
                    'REKAM SUARA GAGAL !',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(30),
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Sukses();
                      }));
                      // Aksi ketika button diklik
                    },
                    child: Text(
                      'REKAM ULANG',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    color: Colors.red[200],
                  ),
                ),
              ]),
        ));
  }
}

import 'package:detector/halaman_utama.dart';
import 'package:flutter/material.dart';

class First_Screen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Halaman Awal',
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
        body: SafeArea(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset('images/usk.png'),
            Container(
              padding: EdgeInsets.only(top: 30),
              child: Text(
                'ESCAPED',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30.0),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Wheezing Sound for Asthma COPD Diagnose',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'UNIVERSITAS SYIAH KUALA',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              margin: EdgeInsets.all(30),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Halaman_Utama();
                  }));
                  // Aksi ketika button diklik
                },
                child: Text(
                  'MASUK',
                  style: TextStyle(fontSize: 20.0),
                ),
                color: Colors.red[200],
              ),
            ),
          ]),
    ));
  }
}

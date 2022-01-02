import 'package:detector/fail_screen.dart';
import 'package:detector/help.dart';
import 'package:detector/info.dart';
import 'package:flutter/material.dart';

class Halaman_Utama extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Halaman Utama',
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 200.0, left: 110.0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Fail_Screen();
                  })); // Aksi ketika button diklik
                },
                child: Text(
                  'REKAM SUARA',
                  style: TextStyle(fontSize: 20.0),
                ),
                color: Colors.red[200],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0, left: 110.0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Help();
                  })); // Aksi ketika button diklik
                },
                child: Text(
                  'TENTANG ESCAPED',
                  style: TextStyle(fontSize: 20.0),
                ),
                color: Colors.red[200],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0, left: 110.0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Info();
                  })); // Aksi ketika button diklik
                },
                child: Text(
                  'INFO',
                  style: TextStyle(fontSize: 20.0),
                ),
                color: Colors.red[200],
              ),
            ),
          ]),
    ));
  }
}

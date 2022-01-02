import 'package:detector/halaman_utama.dart';
import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Halaman Info',
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
        title: Text('INFO'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  'PKM-KC',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 22.0),
                ),
              ),
              Container(
                child: Text(
                  'UNIVERSITAS SYIAH KUALA',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 22.0),
                ),
              ),
              Container(
                child: Text(
                  'Detector Kelainan Obstruksi Saluran Napas Melalui Getaran Dinding Dada pada Pasien PPOK/Asma Secara Real Time yang Terintegrasi dengan Gadget',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 30, left: 8),
                child: Text(
                  'Pembimbing : Dr. dr. Budi Yanti, SpP (K)',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 8),
                child: Text(
                  'Ketua             : Khalilullah  ',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 8),
                child: Text(
                  'Anggota        : Delia Putri Sanur  ',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 109),
                child: Text(
                  'Adinda Zahra Ayufi Ramadhani ',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 109),
                child: Text(
                  'Muhammad Yusuf Kardawi ',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 109),
                child: Text(
                  'Fawzi Linggo ',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              Container(
                //height: 30,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 90, right: 90, top: 30),
                      child: Image.asset('images/unsyiah.png'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

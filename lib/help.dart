import 'package:detector/halaman_utama.dart';
import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Halaman Help',
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
          title: Text('TENTANG ESCAPED'),
        ),
        body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 10, top: 10, right: 10),
                  child: Text(
                    'ESCAPED adalah Aplikasi untuk mendeteksi adanya obstruksi saluran pernapasan pada pasien PPOK/asma.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 17.0),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, top: 10, right: 10),
                  child: Text(
                    'ESCAPED dapat membantu penatalaksanaan pasien dengan kelainan obstruksi saluran pernapasan dapat segera dilakukan sehingga menurunkan angka morbiditas dan mortalitas pasien PPOK/asma di Indonesia.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 17.0),
                  ),
                ),
              ]),
        ));
  }
}

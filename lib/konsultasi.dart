import 'package:flutter/material.dart';
import 'package:medicare_application/dokteranak_chat.dart';
import 'package:medicare_application/dokterumum_chat.dart';

class Konsultasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Konsultasi'),
        backgroundColor: Color.fromRGBO(244, 67, 54, 1), // Warna latar belakang appbar
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        color: Colors.white, // Warna latar belakang body
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Selamat datang di Konsultasi',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(244, 67, 54, 1), // Warna teks
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Pilih jenis konsultasi:',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black, // Warna teks
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DokterUmumChat()),
                );
                // Aksi ketika tombol ditekan
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(244, 67, 54, 1), // Warna latar belakang tombol
              ),
              child: Text(
                'Dokter Umum',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
            SizedBox(height: 8.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DokterAnakChat()),
                );
                // Aksi ketika tombol ditekan
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.red, // Warna latar belakang tombol
              ),
              child: Text(
                'Dokter Ibu & Anak',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
            SizedBox(height: 8.0),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: Konsultasi(),
    ),
  );
}
import 'package:flutter/material.dart';

class BayarPage extends StatefulWidget {
  @override
  _BayarPageState createState() => _BayarPageState();
}

class _BayarPageState extends State<BayarPage> {
  String nama = '';
  String nomorTelepon = '';
  String alamat = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bayar'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              onChanged: (value) {
                setState(() {
                  nama = value;
                });
              },
              decoration: InputDecoration(labelText: 'Nama'),
            ),
            TextField(
              onChanged: (value) {
                setState(() {
                  nomorTelepon = value;
                });
              },
              decoration: InputDecoration(labelText: 'Nomor Telepon'),
            ),
            TextField(
              onChanged: (value) {
                setState(() {
                  alamat = value;
                });
              },
              decoration: InputDecoration(labelText: 'Alamat'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add logic to handle payment
                // You can navigate to a success page or perform any other action.
                Navigator.pop(context); // Go back to the cart page after payment
              },
              child: Text('Bayar'),
            ),
          ],
        ),
      ),
    );
  }
}

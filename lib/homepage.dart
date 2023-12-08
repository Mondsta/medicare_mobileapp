import 'package:flutter/material.dart';
import 'package:medicare_application/view/navigator.dart';
import 'login.dart';
import 'konsultasi.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(244, 67, 54, 1),
        title: const Text('Medicare'),
        actions: [],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: const Text(
              'Nama : Raymond',
              style: TextStyle(
                color: Color.fromRGBO(244, 67, 54, 1),
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Konsultasi()),
                  );
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.black),
                  backgroundColor: Colors.transparent,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/konsultasi.png',
                      width: 100, // adjust the width as needed
                      height: 100, // adjust the height as needed
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Konsultasi',
                      style: TextStyle(color: Color.fromRGBO(244, 67, 54, 1), fontSize: 18),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20), // Adjust the spacing between buttons
              OutlinedButton(
                onPressed: () {
                 Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainNavigator()),
                  );
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.black),
                  backgroundColor: Colors.transparent,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/obat.png',
                      width: 100, // adjust the width as needed
                      height: 100, // adjust the height as needed
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Obat',
                      style: TextStyle(color: Color.fromRGBO(244, 67, 54, 1), fontSize: 18),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: Container(
        alignment: Alignment.bottomRight,
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {
            // Add logic for "Log Out" button
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            );
          },
          style: ElevatedButton.styleFrom(
            primary: Color.fromRGBO(244, 67, 54, 1),
          ),
          child: const Text('Log Out'),
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
    ),
  );
}

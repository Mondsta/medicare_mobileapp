import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Home page UI elements here

            const Text(
              'Welcome to Medicare!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30), // Add some space between welcome text and buttons
            ElevatedButton(
              onPressed: () {
                // Add logic for "Konsultasi" button
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                child: const Text(
                  'Konsultasi',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            const SizedBox(height: 20), // Add some space between buttons
            ElevatedButton(
              onPressed: () {
                // Add logic for "Obat" button
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                child: const Text(
                  'Obat',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

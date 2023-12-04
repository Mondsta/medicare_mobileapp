import 'package:flutter/material.dart';
import 'register.dart';
import 'homepage.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Remove the AppBar
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Customizable UI elements here
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Image.asset(
                  'assets/Medicare.png', // Ganti dengan path gambar Anda
                  height: 150, // Ubah tinggi gambar sesuai keinginan
                ),
              ),
              const SizedBox(height: 40), // Add some space between image and fields
              Container(
                width: 300, // Sesuaikan dengan lebar yang diinginkan
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Username',
                    // Custom styling
                    filled: true,
                    fillColor: Colors.white, // Ganti warna latar belakang kolom
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black), // Outline warna hitam saat difokuskan
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black), // Outline warna hitam saat tidak difokuskan
                    ),
                    labelStyle: TextStyle(color: Colors.grey), // Warna teks label abu-abu
                  ),
                ),
              ),
              const SizedBox(height: 10), // Add some space between fields
              Container(
                width: 300, // Sesuaikan dengan lebar yang diinginkan
                child: TextField(
                  obscureText: !_isPasswordVisible,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    // Custom styling
                    filled: true,
                    fillColor: Colors.white, // Ganti warna latar belakang kolom
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black), // Outline warna hitam saat difokuskan
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black), // Outline warna hitam saat tidak difokuskan
                    ),
                    labelStyle: TextStyle(color: Colors.grey), // Warna teks label abu-abu
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20), // Add some space between fields
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red, // Ganti warna tombol menjadi merah
                ),
                child: const Text('Login'),
              ),
              const SizedBox(height: 10), // Add some space between button and text
              const Text(
                'If you don\'t have an account, click below to signup.',
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
              ),
              Container(
                alignment: Alignment.center, // Pindahkan tombol register ke kanan
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterScreen()),
                    );
                  },
                  child: const Text(
                    'Register',
                    style: TextStyle(color: Color.fromRGBO(244, 67, 54, 1), fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

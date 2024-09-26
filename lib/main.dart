import 'package:flutter/material.dart';
import 'second_page.dart'; // Pastikan file ini ada dan jalur benar

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("E-Muthawif"),
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                // Tambahkan logo di sini
                Image.asset(
                  'assets/images/logo.png', // Sesuaikan dengan path logo
                  height: 100, // Sesuaikan ukuran logo
                ),
                const SizedBox(height: 1), // Jarak antara logo dan teks
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Text(
                    'Mulailah Sekarang',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    'Buat akun atau masuk untuk menjelajahi aplikasi kami',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextButton(
                      onPressed: () {
                        // Fungsi untuk tombol Masuk
                        print("Tombol Masuk ditekan");
                      },
                      child: Text('Masuk'),
                    ),
                    const SizedBox(width: 16),
                    TextButton(
                      onPressed: () {
                        // Fungsi untuk tombol Daftar
                        print("Tombol Daftar ditekan");
                      },
                      child: Text('Daftar'),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                TextField(
                  maxLength: 100,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Nama Lengkap",
                    hintText: "Masukkan Nama Lengkap",
                    counterText: '',
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  maxLength: 16,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "NIK",
                    hintText: "Masukkan NIK",
                    counterText: '',
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  maxLength: 8,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Password",
                    hintText: "Masukkan Password",
                    suffixIcon: const Icon(Icons.visibility),
                  ),
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {
                    print("Tombol ditekan"); // Debugging
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondPage()),
                    ).then((_) {
                      print("Navigasi selesai"); // Debugging
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF00B4D8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: const Text(
                    "Masuk",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Page 1"),
        ),
        body: Column(
          children: [
            Text("Ini adalah Page 1")
            ElevatedButton(onPressed: (){
              Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyApp()));
            }, 
            child: Text("Next")
            )
          ],
        ),
      ),
    )
  }
}
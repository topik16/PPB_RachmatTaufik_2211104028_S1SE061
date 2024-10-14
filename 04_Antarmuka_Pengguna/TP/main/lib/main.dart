import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rekomendasi Wisata',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WisataPage(),
    );
  }
}

class WisataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rekomendasi Wisata'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Nama Tempat Wisata',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTP9e1Lc7jMucIULHsH-kDSEfkPekoBnaCGcA&s', // Ganti dengan URL gambar yang valid
                width: 300,
                height: 200,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Deskripsi tempat wisata ini sangat menarik dan menawarkan banyak hal untuk dilihat dan dilakukan. Anda dapat menikmati pemandangan yang indah dan berbagai aktivitas menarik di tempat ini.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: Text('Kunjungi Tempat'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

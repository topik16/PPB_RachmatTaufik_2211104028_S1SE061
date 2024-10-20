import 'package:flutter/material.dart';

void main() {
  runApp(LabuanBajoApp());
}

class LabuanBajoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LabuanBajoListScreen(),
    );
  }
}

class LabuanBajoListScreen extends StatelessWidget {
  final List<Map<String, String>> destinations = [
    {
      'name': 'Pulau Komodo',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmLYRlF6nIj2snNXD_qPLID7yJKlpWMWOGmw&s',
    },
    {
      'name': 'Pantai Pink',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmLYRlF6nIj2snNXD_qPLID7yJKlpWMWOGmw&s',
    },
    {
      'name': 'Pulau Padar',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmLYRlF6nIj2snNXD_qPLID7yJKlpWMWOGmw&s',
    },
    {
      'name': 'Goa Batu Cermin',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmLYRlF6nIj2snNXD_qPLID7yJKlpWMWOGmw&s',
    },
    {
      'name': 'Manta Point',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmLYRlF6nIj2snNXD_qPLID7yJKlpWMWOGmw&s',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Wisata Labuan Bajo'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: destinations.length,
        itemBuilder: (context, index) {
          return DestinationCard(
            name: destinations[index]['name']!,
            imageUrl: destinations[index]['image']!,
          );
        },
      ),
    );
  }
}

class DestinationCard extends StatelessWidget {
  final String name;
  final String imageUrl;

  DestinationCard({required this.name, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              child: Image.network(
                imageUrl,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                name,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

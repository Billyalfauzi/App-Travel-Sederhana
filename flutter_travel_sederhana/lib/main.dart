import 'package:flutter/material.dart';

void main() {
  runApp(TravelApp());
}

class TravelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Travel App'),
          backgroundColor: Colors.grey[700], // Mengubah warna header menjadi abu-abu
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Bagian atas
              Container(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/profile_image.jpg'),
                      radius: 30,
                    ),
                    SizedBox(width: 16.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Selamat datang, Billy Alfauzi Caesar!'),
                        SizedBox(height: 8.0),
                        Icon(Icons.notifications),
                      ],
                    ),
                  ],
                ),
              ),

              // Bagian pencarian dan filter
              Container(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Cari lokasi...',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(width: 16.0),
                    ElevatedButton(
                      onPressed: () {
                        // Aksi ketika tombol filter ditekan
                      },
                      child: Text('Filter'),
                    ),
                  ],
                ),
              ),

              // Bagian Direkomendasikan
              Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Direkomendasikan',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Container(
                      height: 200.0,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: recommendedLocations.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Card(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      recommendedLocations[index]['image'].toString(),
                                      width: 150.0,
                                      height: 100.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(height: 8.0),
                                  Text(recommendedLocations[index]['name'].toString()),
                                  Text(recommendedLocations[index]['location'].toString()),
                                  Text(recommendedLocations[index]['country'].toString()),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),

              // Bagian Tujuan Teratas
              Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tujuan Teratas',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Container(
                      height: 100.0,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: topDestinations.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Card(
                              child: Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      topDestinations[index]['image'].toString(),
                                      width: 80.0,
                                      height: 80.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(width: 8.0),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(topDestinations[index]['location'].toString()),
                                      Text(topDestinations[index]['country'].toString()),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),

              // Bagian footer (deskripsi aplikasi)
              Container(
                padding: EdgeInsets.all(16.0),
                color: Colors.grey[200], // Warna abu-abu untuk latar belakang footer
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tentang Aplikasi',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Aplikasi perjalanan ini memudahkan Anda dalam mencari lokasi-'
                      'lokasi wisata menarik di berbagai negara. Temukan pengalaman'
                      'perjalanan yang tak terlupakan bersama kami!',
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


List<Map<String, String>> recommendedLocations = [
  {
    'image': 'assets/location1.jpg',
    'name': 'Candi Bentar',
    'location': 'Bali',
    'country': 'Indonesia',
  },
  {
    'image': 'assets/location2.jpg',
    'name': 'Desa Miyama',
    'location': 'Kyoto',
    'country': 'Jepang',
  },
  {
    'image': 'assets/location3.jpg',
    'name': 'Merlion',
    'location': 'One Fullerton',
    'country': 'Singapura',
  },
  // Lokasi yang direkomendasikan di sini
];

List<Map<String, String>> topDestinations = [
  {
    'image': 'assets/destination1.jpg',
    'name': 'Grindelwald',
    'location': 'Interlaken-Oberhasli.',
    'country': 'Swiss',
  },
  {
    'image': 'assets/destination2.jpg',
    'name': 'Kanal Amsterdam',
    'location': 'Amsterdam',
    'country': 'Belanda',
  },
  {
    'image': 'assets/destination3.jpg',
    'name': 'Pantai Prainha',
    'location': 'Rio De Janeiro',
    'country': 'Brazil',
  },
];


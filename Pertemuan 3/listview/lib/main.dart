import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Fungsi utama untuk menjalankan aplikasi Flutter
void main() {
  runApp(MyApp()); // MaterialApp
}

// Fungsi untuk mengembalikan MaterialApp
MaterialApp MyApp() {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("ListView"),
        actions: [
          IconButton(
            icon: const Icon(Icons.comment),
            tooltip: 'Comment Icon',
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Setting Icon',
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.lightGreen,
        elevation: 50.0,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Menu Icon',
          onPressed: () {},
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [
          CircleAvatar(
            maxRadius: 50,
            backgroundColor: Colors.black,
            child: Icon(Icons.person, color: Colors.white, size: 50),
          ),
          SizedBox(height: 20), // Menambahkan jarak antara elemen
          Center(
            child: Text(
              'FTI Tutorial',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20), // Menambahkan jarak antara elemen
          Text(
            "Ini adalah constructor standar untuk class ListView. "
            "ListView secara sederhana menggunakan list widget dan membuatnya dapat "
            "di-scroll. Biasanya, ListView digunakan dengan beberapa child sebagai "
            "list, dan akan membangun elemen-elemen tak terlihat dalam list. Oleh "
            "karena itu, menggunakan terlalu banyak widget dapat mengurangi "
            "efisiensi list. "
            "Ini adalah constructor standar untuk class ListView. "
            "ListView secara sederhana menggunakan list widget dan membuatnya dapat "
            "di-scroll. Biasanya, ListView digunakan dengan beberapa child sebagai "
            "list, dan akan membangun elemen-elemen tak terlihat dalam list. Oleh "
            "karena itu, menggunakan terlalu banyak widget dapat mengurangi "
            "efisiensi list.",
            style: TextStyle(
              fontSize: 20,
              height: 1.5, // Menambahkan spasi antar baris
            ),
          ),
        ],
      ),
    ),
    debugShowCheckedModeBanner: false, // Menghapus debug banner
  );
}

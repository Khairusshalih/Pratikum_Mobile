import 'package:flutter/material.dart';

void main() {
  runApp(const TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  // This widget is the root of your application.
 @override
Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false, // Untuk menghilangkan banner
    home: DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home, color: Colors.white), text: "Home"),
              Tab(icon: Icon(Icons.person, color: Colors.white), text: "Profile"),
              Tab(icon: Icon(Icons.settings, color: Colors.white), text: "Settings"),
              Tab(icon: Icon(Icons.notifications, color: Colors.white), text: "Notifications"),
              Tab(icon: Icon(Icons.help, color: Colors.white), text: "Help"),
            ],
          ),
          title: const Text('FTI Tutorial', style: TextStyle(
                color: Colors.white, // Warna teks
                fontWeight: FontWeight.bold, // Membuat teks tebal (opsional)
              ),
              ), 
          backgroundColor: Colors.blue,
        ),
body: const TabBarView(
            children: [
              // Tab 1
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.home, size: 200, color: Colors.red),
                    Text("Welcome to the Home Tab", 
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              // Tab 2
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.person, size: 200, color: Colors.red),
                    Text("This is the Profile Tab", 
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              // Tab 3
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.settings, size: 200, color: Colors.red),
                    Text("Manage Settings Here", 
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              // Tab 4
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.notifications, size: 200, color: Colors.red),
                    Text("Your Notifications", 
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              // Tab 5
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.help, size: 200, color: Colors.red),
                    Text("Need Help? Click Here", 
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
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
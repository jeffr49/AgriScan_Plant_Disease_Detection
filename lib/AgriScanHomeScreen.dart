import 'package:flutter/material.dart';
import 'image_upload_screen.dart'; // Import the image upload screen

void main() {
  runApp(AgriScanApp());
}

class AgriScanApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: AgriScanHomeScreen(),
    );
  }
}

class AgriScanHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AgriScan")),
      body: Center( // Ensures content is centered horizontally
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centers content vertically
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // AgriScan Logo
              Image.asset(
                'assets/images/agriscan_logo.jpg',
                width: 120,
                height: 120,
              ),

              SizedBox(height: 20),

              // Welcome Text
              Text(
                "Welcome to AgriScan 🌱",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 10),

              // Introduction
              Text(
                "Your AI-powered plant disease detection app. Simply scan a leaf, and AgriScan will analyze and predict potential diseases to help you take action early!",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),

              SizedBox(height: 20),

              // Ratings & Reviews
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: Colors.orange, size: 28),
                  SizedBox(width: 5),
                  Text(
                    "4.8/5 (500+ Reviews)",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              SizedBox(height: 30),

              // "Start Scanning" Button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ImageUploadScreen()), // Navigate to Image Upload
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  "Start Scanning 📷",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

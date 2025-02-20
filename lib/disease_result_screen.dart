import 'package:flutter/material.dart';
import 'package:plant_disease/screens/apple_scab_screen.dart';
import 'package:plant_disease/screens/black_rot_screen.dart';
import 'package:plant_disease/screens/cedar_apple_rust_screen.dart';
import 'package:plant_disease/screens/potato_early_blight_screen.dart';
import 'package:plant_disease/screens/tomato_early_blight_screen.dart';
import 'package:plant_disease/screens/tomato_healthy_screen.dart';
import 'package:plant_disease/screens/corn_cercospora_leaf_spot_screen.dart';

class DiseaseResultScreen extends StatelessWidget {
  final String diseaseName;

  const DiseaseResultScreen({super.key, required this.diseaseName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Disease Detection Result")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Detected Disease:",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              diseaseName,
              style: const TextStyle(fontSize: 20, color: Colors.green),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _navigateToDiseaseScreen(context),
              child: const Text("Learn More"),
            ),
          ],
        ),
      ),
    );
  }

  // Navigate to the correct disease info screen
  void _navigateToDiseaseScreen(BuildContext context) {
    Widget screen;

    switch (diseaseName) {
      case "Apple___Apple_scab":
        screen = const AppleScabScreen();
        break;
      case "Apple___Black_rot":
        screen = const BlackRotScreen();
        break;
      case "Apple___Cedar_apple_rust":
        screen = const CedarAppleRustScreen();
        break;
      case "Potato___Early_blight":
        screen = const PotatoEarlyBlightScreen();
        break;
      case "Tomato___Early_blight":
        screen = const TomatoEarlyBlightScreen();
        break;
      case "Tomato___healthy": // ✅ New Case
        screen = const TomatoHealthyScreen();
        break;
      case "Corn_(maize)_Cercospora_leaf_spot Gray_leaf_spot":
        screen=const CornCercosporaLeafSpotScreen();
        break;
      default:
        screen = const Scaffold(body: Center(child: Text("No info available")));
    }

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }
}

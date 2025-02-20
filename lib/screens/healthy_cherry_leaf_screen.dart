import 'package:flutter/material.dart';
import '../widgets/info_card.dart';
import '../widgets/hover_info_card.dart';

class HealthyCherryLeafScreen extends StatelessWidget {
  const HealthyCherryLeafScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Healthy Cherry Leaf")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Healthy Cherry Leaf",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            // Image
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'assets/images/healthy_cherry_leaf.jpg',
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 15),
            InfoCard(
              title: "Maintaining Health",
              content:
              "Keep your cherry leaves healthy with proper care.",
              icon: Icons.check_circle_outline,
            ),
            HoverInfoCard(
              title: "Proper Watering",
              content:
              "Provide the right amount of water using drip irrigation.",
              icon: Icons.opacity,
              hoverColor: Colors.blue.shade50,
            ),
            HoverInfoCard(
              title: "Fertilization",
              content:
              "Use balanced fertilizers to ensure nutrient supply.",
              icon: Icons.eco,
              hoverColor: Colors.green.shade50,
            ),
          ],
        ),
      ),
    );
  }
}

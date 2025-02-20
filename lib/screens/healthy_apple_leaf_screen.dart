import 'package:flutter/material.dart';
import '../widgets/info_card.dart';
import '../widgets/hover_info_card.dart';

class HealthyAppleLeafScreen extends StatelessWidget {
  const HealthyAppleLeafScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Healthy Apple Leaf")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Healthy Apple Leaf",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            // Image
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'assets/images/healthy_apple_leaf.jpg',
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 15),
            InfoCard(
              title: "Maintaining Health",
              content:
              "Proper care keeps your apple leaves healthy.",
              icon: Icons.check_circle_outline,
            ),
            HoverInfoCard(
              title: "Proper Watering",
              content:
              "Ensure adequate water without overwatering.",
              icon: Icons.opacity,
              hoverColor: Colors.blue.shade50,
            ),
            HoverInfoCard(
              title: "Fertilization",
              content:
              "Use balanced fertilizers or compost for essential nutrients.",
              icon: Icons.eco,
              hoverColor: Colors.green.shade50,
            ),
          ],
        ),
      ),
    );
  }
}

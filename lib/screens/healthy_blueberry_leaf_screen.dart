import 'package:flutter/material.dart';
import '../widgets/info_card.dart';
import '../widgets/hover_info_card.dart';

class HealthyBlueberryLeafScreen extends StatelessWidget {
  const HealthyBlueberryLeafScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Healthy Blueberry Leaf")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Healthy Blueberry Leaf",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            // Image
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'assets/images/healthy_blueberry_leaf.jpg',
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 15),
            InfoCard(
              title: "Maintaining Health",
              content:
              "Proper care ensures your blueberry leaves remain healthy.",
              icon: Icons.check_circle_outline,
            ),
            HoverInfoCard(
              title: "Proper Watering",
              content:
              "Provide consistent moisture with drip irrigation.",
              icon: Icons.opacity,
              hoverColor: Colors.blue.shade50,
            ),
            HoverInfoCard(
              title: "Fertilization",
              content:
              "Use fertilizers for acid-loving plants to supply nutrients.",
              icon: Icons.eco,
              hoverColor: Colors.green.shade50,
            ),
          ],
        ),
      ),
    );
  }
}

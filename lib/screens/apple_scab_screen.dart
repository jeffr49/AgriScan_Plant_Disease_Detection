import 'package:flutter/material.dart';
import '../widgets/info_card.dart';
import '../widgets/hover_info_card.dart';

class AppleScabScreen extends StatelessWidget {
  const AppleScabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Apple Scab Info")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Apple Scab",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            // Image with rounded borders
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'assets/images/apple_scab.jpg',
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 15),
            // Static info card
            InfoCard(
              title: "What is Apple Scab?",
              content:
              "Apple scab is a fungal disease affecting apple trees. It causes dark, velvety spots on leaves, fruit, and sometimes branches, reducing fruit quality and yield.",
              icon: Icons.info,
            ),
            // Hover cards
            HoverInfoCard(
              title: "Symptoms",
              content:
              "• Dark, velvety spots on leaves and fruit\n• Distorted leaves\n• Reduced fruit quality",
              icon: Icons.warning,
              hoverColor: Colors.blue.shade50,
            ),
            HoverInfoCard(
              title: "Prevention",
              content:
              "✔ Use resistant apple varieties\n✔ Prune and remove infected parts\n✔ Ensure proper spacing and timely fungicide application",
              icon: Icons.shield,
              hoverColor: Colors.green.shade50,
            ),
            HoverInfoCard(
              title: "Treatment",
              content:
              "✅ Apply fungicides at early signs\n✅ Remove and dispose of infected plant material",
              icon: Icons.medical_services,
              hoverColor: Colors.red.shade50,
            ),
          ],
        ),
      ),
    );
  }
}

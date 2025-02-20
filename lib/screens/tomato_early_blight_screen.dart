import 'package:flutter/material.dart';
import '../widgets/info_card.dart';
import '../widgets/hover_info_card.dart';

class TomatoEarlyBlightScreen extends StatelessWidget {
  const TomatoEarlyBlightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tomato Early Blight Info")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Tomato Early Blight",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            // Image with rounded borders
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'assets/images/tomato_early_blight.jpg', // Make sure the image is in assets
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 15),
            // Static info card
            InfoCard(
              title: "What is Tomato Early Blight?",
              content:
              "Early blight is a fungal disease caused by *Alternaria solani* that affects tomato plants. "
                  "It leads to leaf spots, defoliation, and reduced fruit yield.",
              icon: Icons.info,
            ),
            // Hover cards
            HoverInfoCard(
              title: "Symptoms",
              content:
              "• Brown spots with concentric rings on leaves\n"
                  "• Yellowing and wilting of lower leaves\n"
                  "• Dark, sunken lesions on stems and fruit",
              icon: Icons.warning,
              hoverColor: Colors.blue.shade50,
            ),
            HoverInfoCard(
              title: "Prevention",
              content:
              "✔ Use disease-resistant tomato varieties\n"
                  "✔ Rotate crops to prevent fungal buildup\n"
                  "✔ Ensure proper plant spacing for airflow",
              icon: Icons.shield,
              hoverColor: Colors.green.shade50,
            ),
            HoverInfoCard(
              title: "Treatment",
              content:
              "✅ Apply copper-based or chlorothalonil fungicides\n"
                  "✅ Remove and dispose of infected leaves",
              icon: Icons.medical_services,
              hoverColor: Colors.red.shade50,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../widgets/info_card.dart';
import '../widgets/hover_info_card.dart';

class PotatoEarlyBlightScreen extends StatelessWidget {
  const PotatoEarlyBlightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Potato Early Blight Info")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Potato Early Blight",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            // Image with rounded borders
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'assets/images/potato_early_blight.jpg', // Make sure the image is in assets
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 15),
            // Static info card
            InfoCard(
              title: "What is Potato Early Blight?",
              content:
              "Early blight is a common fungal disease of potatoes caused by *Alternaria solani*. "
                  "It leads to brown lesions on leaves and reduces crop yield significantly.",
              icon: Icons.info,
            ),
            // Hover cards
            HoverInfoCard(
              title: "Symptoms",
              content:
              "• Dark brown lesions with concentric rings\n"
                  "• Yellowing leaves leading to defoliation\n"
                  "• Reduced tuber quality and yield",
              icon: Icons.warning,
              hoverColor: Colors.blue.shade50,
            ),
            HoverInfoCard(
              title: "Prevention",
              content:
              "✔ Use certified disease-free seeds\n"
                  "✔ Ensure proper crop rotation\n"
                  "✔ Maintain optimal soil health and moisture control",
              icon: Icons.shield,
              hoverColor: Colors.green.shade50,
            ),
            HoverInfoCard(
              title: "Treatment",
              content:
              "✅ Apply fungicides such as chlorothalonil or copper-based sprays\n"
                  "✅ Remove and destroy infected plant debris",
              icon: Icons.medical_services,
              hoverColor: Colors.red.shade50,
            ),
          ],
        ),
      ),
    );
  }
}

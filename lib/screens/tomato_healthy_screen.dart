import 'package:flutter/material.dart';
import '../widgets/info_card.dart';
import '../widgets/hover_info_card.dart';

class TomatoHealthyScreen extends StatelessWidget {
  const TomatoHealthyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Healthy Tomato Plant Info")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Healthy Tomato Plant",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            // Image with rounded borders
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'assets/images/tomato_healthy.jpg', // Make sure the image is in assets
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 15),
            // Static info card
            InfoCard(
              title: "What is a Healthy Tomato Plant?",
              content:
              "A healthy tomato plant has vibrant green leaves, strong stems, and produces high-quality fruit. "
                  "It grows well under proper sunlight, watering, and soil conditions.",
              icon: Icons.eco,
            ),
            // Hover cards
            HoverInfoCard(
              title: "Characteristics",
              content:
              "• Dark green, firm leaves\n"
                  "• Strong, upright stems\n"
                  "• Continuous flowering and fruit production",
              icon: Icons.star,
              hoverColor: Colors.blue.shade50,
            ),
            HoverInfoCard(
              title: "Best Practices",
              content:
              "✔ Provide at least 6-8 hours of sunlight\n"
                  "✔ Use nutrient-rich, well-draining soil\n"
                  "✔ Water consistently at the base of the plant",
              icon: Icons.tips_and_updates,
              hoverColor: Colors.green.shade50,
            ),
            HoverInfoCard(
              title: "Common Issues & Prevention",
              content:
              "✅ Monitor for pests and diseases regularly\n"
                  "✅ Support plants with stakes or cages\n"
                  "✅ Apply organic mulch to retain moisture",
              icon: Icons.health_and_safety,
              hoverColor: Colors.orange.shade50,
            ),
          ],
        ),
      ),
    );
  }
}

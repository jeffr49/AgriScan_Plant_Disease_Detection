import 'package:flutter/material.dart';
import '../widgets/info_card.dart';
import '../widgets/hover_info_card.dart';

class GrapeBlackRotScreen extends StatelessWidget {
  const GrapeBlackRotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Grape Black Rot")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Grape - Black Rot",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            // Display grape black rot image with rounded borders.
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'assets/images/grape_black_rot.jpg', // Ensure this asset exists in your assets folder
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 15),
            InfoCard(
              title: "What is Grape Black Rot?",
              content:
              "Grape Black Rot is a fungal disease affecting grapevines. It causes dark lesions on leaves and fruit, leading to fruit rot and significant yield loss.",
              icon: Icons.info,
            ),
            HoverInfoCard(
              title: "Symptoms",
              content:
              "• Dark, necrotic lesions on leaves and berries\n• Fruit decay and discoloration\n• Severe infections can lead to defoliation",
              icon: Icons.warning,
              hoverColor: Colors.orange.shade50,
            ),
            HoverInfoCard(
              title: "Prevention",
              content:
              "✔ Remove and destroy infected plant material\n✔ Use disease-resistant grape varieties\n✔ Implement proper vineyard sanitation and pruning",
              icon: Icons.shield,
              hoverColor: Colors.green.shade50,
            ),
            HoverInfoCard(
              title: "Treatment",
              content:
              "✅ Apply fungicides early during the infection\n✅ Maintain good vineyard hygiene\n✅ Prune to improve airflow and reduce humidity",
              icon: Icons.medical_services,
              hoverColor: Colors.red.shade50,
            ),
          ],
        ),
      ),
    );
  }
}

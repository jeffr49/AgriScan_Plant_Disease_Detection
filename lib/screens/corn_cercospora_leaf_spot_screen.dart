import 'package:flutter/material.dart';
import '../widgets/info_card.dart';
import '../widgets/hover_info_card.dart';

class CornCercosporaLeafSpotScreen extends StatelessWidget {
  const CornCercosporaLeafSpotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Corn Cercospora Leaf Spot")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Corn (Maize) - Cercospora Leaf Spot",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            // Image
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'assets/images/cercospora_leaf_spot.jpg',
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 15),
            InfoCard(
              title: "What is Corn Cercospora Leaf Spot?",
              content:
              "Corn Cercospora Leaf Spot (often called Gray Leaf Spot) is a fungal disease affecting maize, causing lesions that reduce photosynthetic area and yield.",
              icon: Icons.info,
            ),
            HoverInfoCard(
              title: "Symptoms",
              content:
              "• Gray/brown lesions on leaves\n• Lesions may merge into larger patches\n• Severe infection can lead to premature leaf drop",
              icon: Icons.warning,
              hoverColor: Colors.orange.shade50,
            ),
            HoverInfoCard(
              title: "Prevention",
              content:
              "✔ Use disease-resistant corn hybrids\n✔ Practice crop rotation and proper field sanitation\n✔ Optimize planting density",
              icon: Icons.shield,
              hoverColor: Colors.green.shade50,
            ),
            HoverInfoCard(
              title: "Treatment",
              content:
              "✅ Apply recommended fungicides early\n✅ Manage crop residue to reduce inoculum\n✅ Follow integrated pest management practices",
              icon: Icons.medical_services,
              hoverColor: Colors.red.shade50,
            ),
          ],
        ),
      ),
    );
  }
}

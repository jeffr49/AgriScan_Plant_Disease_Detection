import 'package:flutter/material.dart';
import '../widgets/info_card.dart';
import '../widgets/hover_info_card.dart';

class CornNorthernLeafBlightScreen extends StatelessWidget {
  const CornNorthernLeafBlightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Corn Northern Leaf Blight")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Corn (Maize) - Northern Leaf Blight",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            // Display image with rounded borders.
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'assets/images/northern_leaf_blight.jpg', // Ensure this asset exists.
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 15),
            InfoCard(
              title: "What is Northern Leaf Blight?",
              content:
              "Northern Leaf Blight is a fungal disease of maize caused by Exserohilum turcicum. It produces long lesions on leaves, reducing the photosynthetic area and yield.",
              icon: Icons.info,
            ),
            HoverInfoCard(
              title: "Symptoms",
              content:
              "• Long, grayish-green to tan lesions on leaves\n• Lesions often have a distinct border\n• Severe infection can lead to premature leaf death",
              icon: Icons.warning,
              hoverColor: Colors.orange.shade50,
            ),
            HoverInfoCard(
              title: "Prevention",
              content:
              "✔ Use resistant maize hybrids\n✔ Practice crop rotation and proper field sanitation\n✔ Manage planting density to enhance airflow",
              icon: Icons.shield,
              hoverColor: Colors.green.shade50,
            ),
            HoverInfoCard(
              title: "Treatment",
              content:
              "✅ Apply fungicides early when symptoms appear\n✅ Remove and destroy infected debris\n✅ Follow integrated disease management practices",
              icon: Icons.medical_services,
              hoverColor: Colors.red.shade50,
            ),
          ],
        ),
      ),
    );
  }
}

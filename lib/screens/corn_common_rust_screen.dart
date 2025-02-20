import 'package:flutter/material.dart';
import '../widgets/info_card.dart';
import '../widgets/hover_info_card.dart';

class CornCommonRustScreen extends StatelessWidget {
  const CornCommonRustScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Corn Common Rust")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Corn (Maize) - Common Rust",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            // Display image with rounded borders
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'assets/images/corn_common_rust.jpg', // Ensure this asset exists in your assets folder
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 15),
            InfoCard(
              title: "What is Corn Common Rust?",
              content:
              "Corn Common Rust is a fungal disease affecting maize. It is characterized by orange to brown pustules on the leaves that can reduce the plant’s photosynthetic ability and yield.",
              icon: Icons.info,
            ),
            HoverInfoCard(
              title: "Symptoms",
              content:
              "• Orange-brown pustules on leaves\n• Lesions may expand and merge\n• Reduced green leaf area resulting in lower yields",
              icon: Icons.warning,
              hoverColor: Colors.orange.shade50,
            ),
            HoverInfoCard(
              title: "Prevention",
              content:
              "✔ Plant disease-resistant corn hybrids\n✔ Practice crop rotation and proper field sanitation\n✔ Manage fertilizer application to avoid excessive nitrogen",
              icon: Icons.shield,
              hoverColor: Colors.green.shade50,
            ),
            HoverInfoCard(
              title: "Treatment",
              content:
              "✅ Apply fungicides early in the infection cycle\n✅ Remove and destroy infected debris\n✅ Follow integrated pest management practices",
              icon: Icons.medical_services,
              hoverColor: Colors.red.shade50,
            ),
          ],
        ),
      ),
    );
  }
}

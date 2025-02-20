import 'package:flutter/material.dart';
import '../widgets/info_card.dart';
import '../widgets/hover_info_card.dart';

class GrapeEscaBlackMeaslesScreen extends StatelessWidget {
  const GrapeEscaBlackMeaslesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Grape Esca (Black Measles)")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Grape - Esca (Black Measles)",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            // Display image with rounded borders.
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'assets/images/grape_esca_black_measles.jpg', // Ensure this asset exists.
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 15),
            InfoCard(
              title: "What is Esca (Black Measles)?",
              content:
              "Grape Esca, also known as Black Measles, is a fungal disease affecting grapevines. It causes dark, scabby lesions on the grapes and can lead to significant yield losses.",
              icon: Icons.info,
            ),
            HoverInfoCard(
              title: "Symptoms",
              content:
              "• Dark, scabby lesions on grapes\n• Discoloration and spotting on leaves\n• Reduced fruit quality and yield",
              icon: Icons.warning,
              hoverColor: Colors.orange.shade50,
            ),
            HoverInfoCard(
              title: "Prevention",
              content:
              "✔ Use disease-resistant grape varieties\n✔ Maintain proper vineyard sanitation\n✔ Prune regularly to improve airflow",
              icon: Icons.shield,
              hoverColor: Colors.green.shade50,
            ),
            HoverInfoCard(
              title: "Treatment",
              content:
              "✅ Apply fungicides as recommended\n✅ Remove and dispose of infected material\n✅ Follow integrated pest management practices",
              icon: Icons.medical_services,
              hoverColor: Colors.red.shade50,
            ),
          ],
        ),
      ),
    );
  }
}

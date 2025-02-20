import 'package:flutter/material.dart';
import '../widgets/info_card.dart';
import '../widgets/hover_info_card.dart';

class CherryPowderyMildewScreen extends StatelessWidget {
  const CherryPowderyMildewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cherry Powdery Mildew Info")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Cherry Powdery Mildew",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            // Image
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'assets/images/cherry_powdery_mildew.jpg',
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 15),
            InfoCard(
              title: "What is Cherry Powdery Mildew?",
              content:
              "Cherry Powdery Mildew is a fungal disease that affects cherry trees. It presents as a white, powdery coating on leaves, buds, and sometimes fruit, reducing quality and yield.",
              icon: Icons.info,
            ),
            HoverInfoCard(
              title: "Symptoms",
              content:
              "• White, powdery spots on leaves and buds\n• Leaf curling and distortion\n• Reduced fruit size and quality",
              icon: Icons.warning,
              hoverColor: Colors.blue.shade50,
            ),
            HoverInfoCard(
              title: "Prevention",
              content:
              "✔ Ensure proper airflow by pruning\n✔ Avoid overhead irrigation\n✔ Plant disease-resistant cherry varieties",
              icon: Icons.shield,
              hoverColor: Colors.green.shade50,
            ),
            HoverInfoCard(
              title: "Treatment",
              content:
              "✅ Apply fungicides early\n✅ Remove and dispose of infected material\n✅ Maintain orchard sanitation",
              icon: Icons.medical_services,
              hoverColor: Colors.red.shade50,
            ),
          ],
        ),
      ),
    );
  }
}

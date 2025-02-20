import 'package:flutter/material.dart';
import '../widgets/info_card.dart';
import '../widgets/hover_info_card.dart';

class CedarAppleRustScreen extends StatelessWidget {
  const CedarAppleRustScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cedar Apple Rust Info")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Cedar Apple Rust",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            // Image
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'assets/images/cedar_apple_rust.jpg',
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 15),
            InfoCard(
              title: "What is Cedar Apple Rust?",
              content:
              "Cedar apple rust is a fungal disease affecting both apple and cedar trees. It causes bright orange to yellow spots on apple leaves and lesions on cedar branches.",
              icon: Icons.info,
            ),
            HoverInfoCard(
              title: "Symptoms",
              content:
              "• Orange-yellow spots on apple leaves\n• Lesions on cedar branches\n• Premature leaf drop on apple trees",
              icon: Icons.warning,
              hoverColor: Colors.orange.shade50,
            ),
            HoverInfoCard(
              title: "Prevention",
              content:
              "✔ Remove nearby cedar trees if possible\n✔ Use resistant apple varieties\n✔ Ensure good airflow in orchards",
              icon: Icons.shield,
              hoverColor: Colors.green.shade50,
            ),
            HoverInfoCard(
              title: "Treatment",
              content:
              "✅ Apply fungicides early\n✅ Remove infected leaves and branches\n✅ Practice good orchard hygiene",
              icon: Icons.medical_services,
              hoverColor: Colors.red.shade50,
            ),
          ],
        ),
      ),
    );
  }
}

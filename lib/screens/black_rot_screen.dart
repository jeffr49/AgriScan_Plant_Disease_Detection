import 'package:flutter/material.dart';
import '../widgets/info_card.dart';
import '../widgets/hover_info_card.dart';

class BlackRotScreen extends StatelessWidget {
  const BlackRotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Black Rot Info")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Black Rot",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            // Image
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'assets/images/black_rot.jpg',
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 15),
            InfoCard(
              title: "What is Black Rot?",
              content:
              "Black rot is a severe fungal disease affecting fruit trees, causing dark, sunken lesions on fruits and leaves that lead to yield losses.",
              icon: Icons.info,
            ),
            HoverInfoCard(
              title: "Symptoms",
              content:
              "• Dark, sunken lesions on fruits\n• Blackened patches on leaves\n• Premature fruit drop in severe cases",
              icon: Icons.warning,
              hoverColor: Colors.orange.shade50,
            ),
            HoverInfoCard(
              title: "Prevention",
              content:
              "✔ Prune and remove infected parts\n✔ Maintain orchard sanitation\n✔ Use appropriate fungicides",
              icon: Icons.shield,
              hoverColor: Colors.green.shade50,
            ),
            HoverInfoCard(
              title: "Treatment",
              content:
              "✅ Remove infected tissues promptly\n✅ Apply fungicides as recommended\n✅ Manage orchard conditions",
              icon: Icons.medical_services,
              hoverColor: Colors.red.shade50,
            ),
          ],
        ),
      ),
    );
  }
}

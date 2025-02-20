import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'thank_you_screen.dart'; // Import Thank You screen

class ContributeScreen extends StatefulWidget {
  @override
  _ContributeScreenState createState() => _ContributeScreenState();
}

class _ContributeScreenState extends State<ContributeScreen> {
  List<File> _images = []; // ✅ Store multiple images
  final picker = ImagePicker();
  final TextEditingController _descriptionController = TextEditingController();

  Future<void> _pickImages() async {
    final List<XFile>? pickedFiles = await picker.pickMultiImage(); // ✅ Pick multiple images

    if (pickedFiles != null && pickedFiles.isNotEmpty) {
      setState(() {
        _images = pickedFiles.map((file) => File(file.path)).toList(); // ✅ Store selected images
      });
    }
  }

  void _submitContribution() {
    if (_images.isEmpty || _descriptionController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please attach images and provide details.")),
      );
      return;
    }

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ThankYouScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Contribute to Dataset")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Upload Images of Diseased Crop",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            // ✅ Display multiple images
            _images.isNotEmpty
                ? SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: _images.map((img) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.file(img, height: 150),
                  );
                }).toList(),
              ),
            )
                : const Text("No images selected"),

            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _pickImages, // ✅ Updated to pick multiple images
              child: const Text("Attach Images"),
            ),

            const SizedBox(height: 20),
            TextField(
              controller: _descriptionController,
              maxLines: 5,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Describe the disease symptoms",
                hintText: "Enter any details about the disease you observed...",
              ),
            ),

            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: _submitContribution,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              child: const Text("Submit Contribution"),
            ),
          ],
        ),
      ),
    );
  }
}

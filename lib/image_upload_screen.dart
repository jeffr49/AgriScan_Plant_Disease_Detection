import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'api_service.dart';
import 'disease_result_screen.dart';
import 'contribute_screen.dart'; // Import the contribution screen

class ImageUploadScreen extends StatefulWidget {
  const ImageUploadScreen({super.key});

  @override
  _ImageUploadScreenState createState() => _ImageUploadScreenState();
}

class _ImageUploadScreenState extends State<ImageUploadScreen> {
  File? _image;
  final ImagePicker picker = ImagePicker();

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await picker.pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path); // ✅ Update UI first
      });

      try {
        String? disease = await ApiService().classifyDisease(_image!);

        if (disease != null && mounted) {
          // ✅ Navigate only if widget is still mounted
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DiseaseResultScreen(diseaseName: disease),
            ),
          );
        } else {
          // Show error if no disease detected
          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Disease could not be classified. Try again."),
                backgroundColor: Colors.red,
              ),
            );
          }
        }
      } catch (e) {
        // Handle network errors
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Error: ${e.toString()}"),
              backgroundColor: Colors.red,
            ),
          );
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Plant Disease Classifier")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _image != null
                ? Image.file(_image!, height: 200)
                : const Text("No image selected"),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () => _pickImage(ImageSource.gallery),
              child: const Text("Pick from Gallery"),
            ),
            ElevatedButton(
              onPressed: () => _pickImage(ImageSource.camera),
              child: const Text("Capture Image"),
            ),

            const SizedBox(height: 30),

            // ✅ New "Contribute to Dataset" Button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContributeScreen(), // Navigate to Contribute Screen
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Different color to stand out
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              child: const Text("Contribute to Dataset 📸", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}

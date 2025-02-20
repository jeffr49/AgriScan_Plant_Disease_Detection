import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  Future<String?> classifyDisease(File image) async {
    var uri = Uri.parse('http://10.0.2.2:8000/classify'); // Backend URL

    var request = http.MultipartRequest('POST', uri)
      ..files.add(await http.MultipartFile.fromPath('file', image.path));

    var response = await request.send();

    if (response.statusCode == 200) {
      var responseData = await response.stream.bytesToString();
      var jsonResponse = json.decode(responseData);
      return jsonResponse['disease']; // Returns classified disease name
    } else {
      print("Error: ${response.statusCode}");
      return null;
    }
  }
}

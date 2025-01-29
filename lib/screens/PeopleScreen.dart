import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Peoplescreen extends StatefulWidget {

  final String title;

  const Peoplescreen({super.key, required this.title});

  @override
  State<Peoplescreen> createState() => _PeoplescreenState();
}

class _PeoplescreenState extends State<Peoplescreen> {

  File? _imageFile;
  final ImagePicker _picker = ImagePicker();

  // Function to open the bottom sheet
  void _openImagePickerBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.camera),
                title: const Text('Take a photo'),
                onTap: () {
                  Navigator.pop(context); // Close the bottom sheet
                  getImageFromCamera();
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Choose from gallery'),
                onTap: () {
                  Navigator.pop(context); // Close the bottom sheet
                  getImageFromGallery();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Future getImageFromGallery() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _imageFile = File(pickedFile.path);
      }
    });
  }

  Future getImageFromCamera() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _imageFile = File(pickedFile.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.deepPurpleAccent
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center, // Centers children horizontally
          children: [
            OutlinedButton(
                onPressed: _openImagePickerBottomSheet, // Open bottom sheet
                child: Text("Add Person")
            ),
            SizedBox(height: 20), // Adds spacing between the buttons
            OutlinedButton(
                onPressed: _openImagePickerBottomSheet, // Open bottom sheet
                child: Text("Detect Person")
            ),
          ],
        ),
      )
    );
  }
}

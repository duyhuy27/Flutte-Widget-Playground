import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickWidget extends StatefulWidget {
  const ImagePickWidget({Key? key}) : super(key: key);

  @override
  State<ImagePickWidget> createState() => _ImagePickWidgetState();
}

class _ImagePickWidgetState extends State<ImagePickWidget> {
  final ImagePicker _picker = ImagePicker();
  XFile? file;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Picker'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              color: Colors.grey,
              child: Center(
                child: file == null
                    ? const Text('Image Not Picked')
                    : Image.file(File(file!.path)),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () async {
                XFile? photo =
                    await _picker.pickImage(source: ImageSource.gallery);
                if (photo != null) {
                  setState(() {
                    file = photo;
                  });
                  print('Image picked: ${file!.path}');
                }
              },
              child: Text('Image Picker'),
            ),
          ],
        ),
      ),
    );
  }
}

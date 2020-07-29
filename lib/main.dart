import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'package:appflutter1/pages/camera_page.dart';

Future<void> main() async {
  final cameras = await availableCameras();

  final primerCamera = cameras.first;

  runApp(
    MaterialApp(
        theme: ThemeData.dark(), home: CameraPage(camera: primerCamera)),
  );
}

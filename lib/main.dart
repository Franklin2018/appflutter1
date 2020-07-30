import 'dart:async';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'package:appflutter1/pages/camera_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();

  final primerCamera = cameras.first;

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: CameraPage(camera: primerCamera),
    ),
  );
}

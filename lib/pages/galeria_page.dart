import 'dart:io';

import 'package:flutter/material.dart';

class GaleriaPage extends StatelessWidget {
  final String imagePath;

  const GaleriaPage({Key key, this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Galeria'),
      ),
      body: Image.file(File(imagePath)),
    );
  }
}

import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String file;

  ImageBanner({this.file});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(height: 200.0),
      decoration: BoxDecoration(color: Colors.grey),
      child: Image.asset(
        this.file,
        fit: BoxFit.cover,
      ),
    );
  }
}

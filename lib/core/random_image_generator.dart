import 'package:flutter/material.dart';

class RandomImageGenerator extends StatelessWidget {
  RandomImageGenerator({Key? key, this.height = 100}) : super(key: key);
  final String imageUrl = "https://picsum.photos/200";
  final double height;
  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      height: height,
      fit: BoxFit.cover,
    );
  }
}

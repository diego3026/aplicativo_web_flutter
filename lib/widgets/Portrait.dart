import 'package:flutter/material.dart';

class Potrait extends StatelessWidget {
  const Potrait({super.key, required this.src});

  final String src;

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Image.network(src, width: _width, fit: BoxFit.fill,);
  }
}

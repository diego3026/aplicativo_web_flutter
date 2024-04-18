import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Portada extends StatelessWidget {
  const Portada({Key? key}) : super(key: key);

  final String src = 'assets/images/cubo.jpg';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Image.asset(
      width: double.maxFinite,
      src,
      fit: BoxFit.cover,
    );
  }
}

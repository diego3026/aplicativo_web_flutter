import 'package:flutter/material.dart';

class SorteoWidget extends StatefulWidget {
  const SorteoWidget({super.key});

  @override
  State<SorteoWidget> createState() => _SorteoWidgetState();
}

class _SorteoWidgetState extends State<SorteoWidget> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ListTile(
            title: Text(
          'Sorteos',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
          ),
        )),
      ],
    );
  }
}

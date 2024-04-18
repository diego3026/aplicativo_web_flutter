import 'package:flutter/material.dart';

class CardSorteo extends StatefulWidget {
  const CardSorteo({super.key,required this.title, required this.src});

  final String title;
  final String src;

  @override
  State<CardSorteo> createState() => _CardSorteoState();
}

class _CardSorteoState extends State<CardSorteo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 10,
        child: Column(
          children: [
            ClipRRect(child: Image.network(widget.src), borderRadius: BorderRadius.circular(20),),
            Text(widget.title),
          ],
        ),
      ),
    );
  }
}

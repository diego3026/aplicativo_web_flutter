import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class CardSorteo extends StatefulWidget {
  const CardSorteo(
      {super.key,
      required this.title,
      required this.src,
      required this.resultado});

  final String title;
  final String src;
  final String resultado;

  @override
  State<CardSorteo> createState() => _CardSorteoState();
}

class _CardSorteoState extends State<CardSorteo> {
  @override
  Widget build(BuildContext context) {
    final double _dimension = MediaQuery.of(context).size.width * 0.2 - 14;

    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 5,
        child: SizedBox.square(
          dimension: _dimension,
          child: Stack(
            fit: StackFit.expand,
            children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                widget.src,
                fit: BoxFit.cover,
              ),
            ),
            Center(child: Container(decoration: BoxDecoration(color: Colors.white), child: Text("${widget.title} \n ${widget.resultado}", textAlign: TextAlign.center,),))
          ]),
        ));
  }
}

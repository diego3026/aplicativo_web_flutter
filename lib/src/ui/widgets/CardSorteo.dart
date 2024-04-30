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
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Expanded(
                  child: Image.asset(widget.src),
                ),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.white),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                    child: Column(
                      children: [
                        Text(widget.title),
                        Text(widget.resultado),
                      ],
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}

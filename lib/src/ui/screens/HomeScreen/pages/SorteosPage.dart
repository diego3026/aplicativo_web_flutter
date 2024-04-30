import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sorteos_crm/src/ui/widgets/CardSorteo.dart';

class SorteosPage extends StatelessWidget {
  SorteosPage({super.key});

  final List<CardSorteo> list_sorteos = [
    const CardSorteo(
      title: "resultado",
      src: 'images/sorteo_ejemplo_1.jpg',
      resultado: '3026',
    ),
    const CardSorteo(
      title: "resultado",
      src: 'images/sorteo_ejemplo_1.jpg',
      resultado: '2222',
    ),
    const CardSorteo(
      title: "resultado",
      src: 'images/sorteo_ejemplo_1.jpg',
      resultado: '1214',
    ),
  ];

  final int numItems = 3;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Ultimo sorteo",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Open Sans',
                    fontVariations: [
                      FontVariation('ital', 0),
                      FontVariation('wdth', 100),
                      FontVariation('wght', 600),
                      FontVariation('ital', 1),
                      FontVariation('wdth', 100),
                      FontVariation('wght', 600)
                    ],
                  ),
                ),
                Image.asset(
                  '/images/sorteo_ejemplo_1.jpg',
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height * 0.7,
                )
              ],
            ),
          ),
          Container(
            color: Colors.grey,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 0.2,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 1.0,
                crossAxisSpacing: 0.0,
                mainAxisSpacing: 5,
                mainAxisExtent: 264,
              ),
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 14),
              itemCount: numItems,
              itemBuilder: (context, index) => Column(
                children: [
                  CardSorteo(
                    title: list_sorteos[index].title,
                    src: list_sorteos[index].src,
                    resultado: list_sorteos[index].resultado,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

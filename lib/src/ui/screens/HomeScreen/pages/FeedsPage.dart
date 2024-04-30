import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';

class FeedsPage extends StatelessWidget {
  const FeedsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.6,
            child: LayoutGrid(
              areas: '''
              img1 img2 img3
              img1 img4 img5
              ''',
              columnSizes: [2.fr, 1.fr, 1.fr],
              rowSizes: [
                1.fr,
                1.fr,
              ],
              columnGap: 0,
              rowGap: 0,
              children: [
                gridArea('img1')
                    .containing(Image.asset('images/ejemplo_noticia_1.webp')),
                gridArea('img2')
                    .containing(Image.asset('images/ejemplo_noticia_2.jpeg')),
                gridArea('img3')
                    .containing(Image.asset('images/ejemplo_noticia_3.png')),
                gridArea('img4')
                    .containing(Image.asset('images/ejemplo_noticia_4.png')),
                gridArea('img5')
                    .containing(Image.asset('images/ejemplo_noticia_4.png')),
              ],
            ),
          )
        ],
      ),
    );
  }
}

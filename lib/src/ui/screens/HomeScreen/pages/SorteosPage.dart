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

  @override
  Widget build(BuildContext context) {
    final int numItems = list_sorteos.length;
    final String _lorem =
        '''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dolor sed viverra ipsum nunc aliquet bibendum enim. Mattis enim ut tellus elementum sagittis. Imperdiet proin fermentum leo vel orci porta non pulvinar. Id ornare arcu odio ut sem nulla pharetra diam. Enim sed faucibus turpis in eu mi bibendum. Tincidunt ornare massa eget egestas purus viverra accumsan. Mattis nunc sed blandit libero volutpat. Congue quisque egestas diam in arcu cursus euismod quis. Feugiat vivamus at augue eget arcu dictum. Vivamus arcu felis bibendum ut. Non arcu risus quis varius quam quisque id diam.

Sit amet volutpat consequat mauris nunc congue nisi vitae. Id diam vel quam elementum pulvinar etiam. Justo eget magna fermentum iaculis eu non diam. Morbi tristique senectus et netus et malesuada. Quisque sagittis purus sit amet volutpat consequat mauris. Pretium aenean pharetra magna ac placerat. Eu mi bibendum neque egestas congue quisque. Id diam vel quam elementum pulvinar etiam. Dignissim sodales ut eu sem. Iaculis at erat pellentesque adipiscing commodo elit at. At erat pellentesque adipiscing commodo elit at imperdiet. Tellus integer feugiat scelerisque varius morbi. Fames ac turpis egestas sed tempus urna et pharetra. Viverra suspendisse potenti nullam ac tortor vitae purus. Sollicitudin ac orci phasellus egestas. Lectus proin nibh nisl condimentum id venenatis a. Accumsan sit amet nulla facilisi morbi tempus iaculis. Neque ornare aenean euismod elementum nisi quis eleifend quam.

Massa sapien faucibus et molestie ac feugiat sed. Et netus et malesuada fames ac. Urna nunc id cursus metus aliquam eleifend. Elit ullamcorper dignissim cras tincidunt lobortis feugiat vivamus at. Tortor dignissim convallis aenean et. Interdum posuere lorem ipsum dolor sit amet consectetur adipiscing. Sit amet nisl suscipit adipiscing bibendum. Egestas purus viverra accumsan in nisl. Ornare suspendisse sed nisi lacus sed viverra. Et odio pellentesque diam volutpat commodo sed. Interdum velit euismod in pellentesque massa placerat duis. Dolor sit amet consectetur adipiscing elit duis tristique sollicitudin nibh. Maecenas pharetra convallis posuere morbi leo urna. Lobortis scelerisque fermentum dui faucibus in ornare quam. Urna nec tincidunt praesent semper feugiat.

Non blandit massa enim nec. Interdum posuere lorem ipsum dolor sit amet. Augue eget arcu dictum varius duis at consectetur lorem donec. Mauris nunc congue nisi vitae suscipit tellus. Ac tincidunt vitae semper quis lectus nulla at. Donec ultrices tincidunt arcu non. Lacus suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant. Libero enim sed faucibus turpis in eu mi. Pulvinar pellentesque habitant morbi tristique senectus et netus. Dictum non consectetur a erat nam. Risus commodo viverra maecenas accumsan lacus vel facilisis volutpat est. Ridiculus mus mauris vitae ultricies leo integer malesuada. Laoreet suspendisse interdum consectetur libero. Arcu cursus euismod quis viverra.

Faucibus scelerisque eleifend donec pretium vulputate sapien. Et netus et malesuada fames ac turpis egestas. Id faucibus nisl tincidunt eget nullam non nisi est. Elementum eu facilisis sed odio morbi quis commodo odio. Sit amet mauris commodo quis imperdiet massa. Vitae suscipit tellus mauris a diam. Mauris commodo quis imperdiet massa. Ac odio tempor orci dapibus ultrices in iaculis nunc. Dignissim suspendisse in est ante in nibh. Mattis vulputate enim nulla aliquet porttitor. Nunc aliquet bibendum enim facilisis gravida neque convallis a cras. Ligula ullamcorper malesuada proin libero nunc consequat. Quis varius quam quisque id diam vel. Diam quam nulla porttitor massa id neque aliquam vestibulum. Amet aliquam id diam maecenas ultricies.''';

    return Container(
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(vertical: 20),
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    const Text(
                      "Ultimo sorteo",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Open Sans',
                      ),
                    ),
                    Image.asset(
                      '/images/sorteo_ejemplo_1.jpg',
                      fit: BoxFit.cover,
                      height: MediaQuery.of(context).size.height * 0.7,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: LayoutBuilder(builder: (context, constraints) => Container(width: constraints.maxWidth*0.6, child: Column(
                        children: [
                          Text("Sorteo #XXX", style: TextStyle(fontWeight: FontWeight.w800),),
                          Text(_lorem, softWrap: true, textAlign: TextAlign.start, style: TextStyle(fontWeight: FontWeight.w400),),
                        ],
                      )),),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            color: Colors.grey,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 0.2,
            child: ListView.builder(
              itemCount: numItems,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: CardSorteo(
                    title: list_sorteos.elementAt(index).title,
                    src: list_sorteos.elementAt(index).src,
                    resultado: list_sorteos.elementAt(index).resultado),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

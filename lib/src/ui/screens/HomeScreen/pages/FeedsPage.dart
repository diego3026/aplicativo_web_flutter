import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';

class FeedsPage extends StatefulWidget {
  FeedsPage({super.key});

  @override
  State<FeedsPage> createState() => _FeedsPageState();
}

class _FeedsPageState extends State<FeedsPage> {
  final List<Map> myProducts =
      List.generate(40, (index) => {"id": index, "name": "Product $index", "src": "assets/images/ejemplo_noticia_3.jpg", "desc": '''
$index Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Luctus accumsan tortor posuere ac. Scelerisque eleifend donec pretium vulputate sapien nec sagittis aliquam. Tristique nulla aliquet enim tortor at auctor urna nunc. Molestie ac feugiat sed lectus. Eu tincidunt tortor aliquam nulla facilisi. Morbi tempus iaculis urna id volutpat lacus laoreet. Sed pulvinar proin gravida hendrerit lectus a. Iaculis at erat pellentesque adipiscing commodo elit at. Neque aliquam vestibulum morbi blandit cursus. Eu volutpat odio facilisis mauris sit. Amet mattis vulputate enim nulla aliquet porttitor lacus luctus. Risus sed vulputate odio ut enim blandit volutpat. Quam elementum pulvinar etiam non quam lacus suspendisse. Et leo duis ut diam. Maecenas ultricies mi eget mauris pharetra. Risus quis varius quam quisque id diam vel quam elementum.

Eget arcu dictum varius duis. Egestas erat imperdiet sed euismod nisi porta lorem. Nisl condimentum id venenatis a condimentum vitae sapien. Facilisis volutpat est velit egestas dui. Odio euismod lacinia at quis. Ante in nibh mauris cursus. Faucibus pulvinar elementum integer enim. In massa tempor nec feugiat nisl pretium. Nunc eget lorem dolor sed. Malesuada fames ac turpis egestas sed tempus urna. Sit amet est placerat in egestas erat imperdiet. Mauris rhoncus aenean vel elit scelerisque mauris.'''})
          .toList();

  late int _cantNews;
  late Map _centralNew;
  final int _lastIndex = 0;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    _cantNews = myProducts.length > 10 ? 5 : myProducts.length;
    _centralNew = myProducts.first;
  }

  @override
  Widget build(BuildContext context) {
    
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text("Ultima noticia", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),),
          ),
          Wrap(children: [Center(child: Column(
            children: [
              LayoutBuilder(builder: (context, constraints) => Image.asset("assets/images/ejemplo_noticia_1.webp", fit: BoxFit.contain, height: MediaQuery.of(context).size.height*0.9,),),
              Text(_centralNew["name"]),
              LayoutBuilder(builder: (context, constraints) => Container(width: constraints.maxWidth*0.65, child: Text("${_centralNew["desc"]}"),),)
            ],
          ),)]),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50),
              child: GridView.builder(
                shrinkWrap: true,
                        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 300,
                            childAspectRatio: 3 / 2,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20),
                        itemCount: _cantNews + 1,
                        itemBuilder: (BuildContext ctx, index) {
                          return index == _cantNews ? TextButton(onPressed: (){
                            if (_cantNews < myProducts.length){
                              setState(() {
                              int aux = _cantNews + 10;
                              _cantNews = aux > myProducts.length ? myProducts.length : aux;
                            });
                            }
                          }, child: Text("Ver más")) : GestureDetector(
                            onTap: () {
                              if(index != _lastIndex){
                                setState(() {
                                  _centralNew = myProducts[index];
                                });
                              }
                            },
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Text(myProducts[index]["name"]),
                            ),
                          );
                        }),
            ),
        ],
      ),
    );
    
    // return Container(
    //   child: Column(
    //     children: [
    //       SizedBox(
    //         height: MediaQuery.of(context).size.height * 0.6,
    //         child: LayoutGrid(
    //           areas: '''
    //           img1 img2 img3
    //           img1 img4 img5
    //           ''',
    //           columnSizes: [2.fr, 1.fr, 1.fr],
    //           rowSizes: [
    //             1.fr,
    //             1.fr,
    //           ],
    //           columnGap: 0,
    //           rowGap: 0,
    //           children: [
    //             gridArea('img1')
    //                 .containing(Image.asset('images/ejemplo_noticia_1.webp')),
    //             gridArea('img2')
    //                 .containing(Image.asset('images/ejemplo_noticia_2.jpeg')),
    //             gridArea('img3')
    //                 .containing(Image.asset('images/ejemplo_noticia_3.png')),
    //             gridArea('img4')
    //                 .containing(Image.asset('images/ejemplo_noticia_4.png')),
    //             gridArea('img5')
    //                 .containing(Image.asset('images/ejemplo_noticia_4.png')),
    //           ],
    //         ),
    //       )
    //     ],
    //   ),
    // );
  }
}

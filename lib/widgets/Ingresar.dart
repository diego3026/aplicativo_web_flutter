import 'package:flutter/material.dart';

class Ingresar extends StatelessWidget {
  const Ingresar({super.key});

  static void Function() _handleLogin = () => {};

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    double _widthBox = _width > 1700 ? 1000 : (_width > 1200 ? 800 : 400);

    return SizedBox(
      width: _widthBox,
      child: Wrap(
        verticalDirection: VerticalDirection.down,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(hintText: "Email", border: OutlineInputBorder()),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(hintText: "Password", border: OutlineInputBorder()),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
                      child: const Text("I forgot my password"),
                    ),
                    Center(
                        child: FilledButton(
                            onPressed: _handleLogin,
                            style: ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))), backgroundColor: MaterialStatePropertyAll(Colors.blueAccent)),
                            child: const Text("Sign In")))
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );

    // return SizedBox(width: _widthBox, child: Column(children: [
    //   Padding(
    //     padding: const EdgeInsets.all(8.0),
    //     child: TextField(decoration: InputDecoration(border: OutlineInputBorder()),),
    //   ),
    //   Padding(
    //     padding: const EdgeInsets.all(8.0),
    //     child: TextField(decoration: InputDecoration(border: OutlineInputBorder()),),
    //   ),
    // ],),);
  }
}

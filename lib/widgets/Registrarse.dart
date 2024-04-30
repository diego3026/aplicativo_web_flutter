import 'package:flutter/material.dart';

class Registrarse extends StatelessWidget {
  const Registrarse({super.key});

  static void Function() _handleSignUp = () => {};

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
              decoration: InputDecoration(hintText: "Username", border: OutlineInputBorder()),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(hintText: "Email", border: OutlineInputBorder()),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(hintText: "Confirm email", border: OutlineInputBorder()),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(hintText: "Password", border: OutlineInputBorder()),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(hintText: "Confirm password", border: OutlineInputBorder()),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                        child: FilledButton(
                            onPressed: _handleSignUp,
                            style: ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))), backgroundColor: MaterialStatePropertyAll(Colors.blueAccent)),
                            child: const Text("Sign up")))
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
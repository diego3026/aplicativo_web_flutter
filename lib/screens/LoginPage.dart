import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled/widgets/Ingresar.dart';
import 'package:untitled/widgets/Registrarse.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isSignUp = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.blue,
            Colors.grey,
          ],
        )),
        child: Center(
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 14,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ], color: Colors.white70, borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Wrap(
                direction: Axis.vertical,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Text(
                    "SORTEOS",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              _isSignUp = false;
                            });
                          },
                          child: Text("Ingresar")),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Text(
                          "|",
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              _isSignUp = true;
                            });
                          },
                          child: Text("Registrarse"))
                    ],
                  ),
                  _isSignUp ? Registrarse() : Ingresar(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

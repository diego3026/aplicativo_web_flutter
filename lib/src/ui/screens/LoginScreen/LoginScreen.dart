import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sorteos_crm/src/ui/screens/LoginScreen/widgets/SignIn.dart';
import 'package:sorteos_crm/src/ui/screens/LoginScreen/widgets/SignUp.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final supabase = Supabase.instance.client;

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
              Colors.red,
            ],
          ),
        ),
        child: Center(
          child: Card(
            elevation: 20,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                direction: Axis.vertical,
                children: [
                  Text(
                    "SORTEOS",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  Wrap(
                    direction: Axis.horizontal,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      GestureDetector(
                          onTap: () => setState(() {
                                _isSignUp = false;
                              }),
                          child: Text("Sign In")),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 8),
                        child: Text("|"),
                      ),
                      GestureDetector(
                          onTap: () => setState(() {
                                _isSignUp = true;
                              }),
                          child: Text("Sign Up")),
                    ],
                  ),
                  _isSignUp ? SignUp() : SignIn()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

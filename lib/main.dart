import 'package:flutter/material.dart';
import 'package:untitled/screens/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pagina web',
      initialRoute: "/",
      routes: {
        "/": (context) => HomePage(),
        "/*": (context) => HomePage(),
      },
    );
  }
}
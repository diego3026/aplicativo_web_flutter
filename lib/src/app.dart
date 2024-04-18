import 'package:flutter/material.dart';
import 'ui/screens/HomeScreen/HomeScreen.dart';
import 'ui/screens/HomeScreen/pages/ContactPage.dart';
import 'ui/screens/HomeScreen/pages/FeedsPage.dart';
import 'ui/screens/HomeScreen/pages/InitialPage.dart';
import 'ui/screens/HomeScreen/pages/SorteosPage.dart';
import 'ui/screens/LoginScreen/LoginScreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pagina web',
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(page: const InitialPage()),
        '/sorteos': (context) => HomeScreen(page: const SorteosPage()),
        '/feeds': (context) => HomeScreen(page: const FeedsPage()),
        '/contactame': (context) => HomeScreen(page: const ContactPage()),
        '/login': (context) => LoginScreen(),
      },
    );
  }
}

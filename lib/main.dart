import 'package:flutter/material.dart';
<<<<<<< HEAD
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
=======
import 'package:sorteos_crm/src/app.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  await dotenv.load(fileName: '.env');
  await Supabase.initialize(
      url: dotenv.env['SUPABASE_URL'].toString(),
      anonKey: dotenv.env['SUPABASE_ANONKEY'].toString());

  runApp(const MyApp());
}
>>>>>>> 85e5f6c (agregando supabase y vistas)

import 'package:flutter/material.dart';
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

// flutter run -d edge --web-renderer htm
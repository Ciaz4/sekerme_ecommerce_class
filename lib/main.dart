import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'app/app.dart';

Future<void> main()async {
  await dotenv.load(fileName:"assets/global/.env");
  await Supabase.initialize(
    url:dotenv.env['SUPABASE_URL']!,
    anonKey:dotenv.env['SUPABASE_KEY']!,
  );
  runApp(const App());
}
final supabase = Supabase.instance.client;
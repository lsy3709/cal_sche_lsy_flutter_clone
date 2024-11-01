import 'package:calendar_scheduler_lsy/screen/auth_screen.dart';
import 'package:calendar_scheduler_lsy/screen/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await Supabase.initialize(
    url: 'Project URL 입력',
    anonKey:'API Key 입력',
    // url: 'Project URL 입력',
    // anonKey:'API Key 입력',
  );

  await initializeDateFormatting();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthScreen(),
    ),
  );
}
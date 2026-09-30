import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:labexam2_cabute/Home_page.dart';
import 'package:labexam2_cabute/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase CRUD',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 5, 58, 109)),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}
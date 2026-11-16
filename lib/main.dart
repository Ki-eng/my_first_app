import 'package:flutter/material.dart';

import 'splash_screen.dart';

void main() {
  runApp(const MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // change the theme color to teal
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        //custom font
        fontFamily: 'Poppins',
        useMaterial3: true,
      ),
      // splash shows first
      home: const SplashScreen(),
    );
  }
}

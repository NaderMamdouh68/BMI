import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';

import 'LogIn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'BMI',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        canvasColor: Colors.black,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Colors.white,
            fontSize: 45,
            fontWeight: FontWeight.w800, 
           ),
          displayMedium: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold, 
           )
      ),
      ),
      home:  const LoginPage(),
    );
  }
}

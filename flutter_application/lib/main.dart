import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/alert.dart';
import 'package:flutter_application_1/widgets/bottomsheet.dart';
import 'package:flutter_application_1/widgets/dismissible.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/image.dart';

void main() {
  runApp(const MyApp());
}

// Stateless Widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
  brightness: Brightness.light, 

  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.orange,   
    brightness: Brightness.light,
  ),

  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.brown, 
    // foregroundColor: Colors.white,  
    centerTitle: true,
  ),
),

      home: const BottomWidget(),
    );
  }
}
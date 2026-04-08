import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/button.dart';
import 'package:flutter_application_1/widgets/list_grid.dart';

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

      // Updated Theme 
      theme: ThemeData(
        brightness: Brightness.dark,

        // Modern way
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(255, 148, 226, 31),
          brightness: Brightness.dark,
        ),

        // AppBar Theme (Important Fix)
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 148, 226, 31),
          foregroundColor: Colors.black, // text/icon color
          centerTitle: true,
        ),
      ),

      home: const ListGrid(),
    );
  }
}
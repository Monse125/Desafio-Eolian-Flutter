import 'package:can_visualizer/views/inicio.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EolianApp());
}

class EolianApp extends StatelessWidget {
  const EolianApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adquisición de Datos',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(colorScheme: ColorScheme(
          brightness: Brightness.dark,
          primary: Colors.pink, 
          onPrimary: Colors.pink,
          secondary: Colors.green,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          surface: Colors.deepOrange.shade50,
          onSurface: Colors.black
          ),),
      home: const Inicio(),
    );
  }
}
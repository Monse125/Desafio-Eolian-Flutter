import 'package:flutter/material.dart';
import 'package:can_visualizer/views/monitor.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(
        'Adquisición de Datos - App Monse Montero',
          style: TextStyle(
                fontSize: 50, // Ajusta el tamaño según prefieras
                fontWeight: FontWeight.bold,
              ),
      )),

      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(500, 70), // Ancho: 200, Alto: 60
            backgroundColor: Colors.deepOrange.shade100
          ),
          child: const Text('Iniciar 😀',
          style: TextStyle(
            fontSize: 50, // Ajusta el tamaño según prefieras
            fontWeight: FontWeight.bold,
          ),),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Monitor()),
            );
          },
        ),
      ),
    );
  }
}

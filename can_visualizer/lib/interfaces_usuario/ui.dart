import 'package:flutter/material.dart';

class InterfazPrincipal extends StatelessWidget {
  const InterfazPrincipal({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Visualizador de CAN',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Visualizador de CAN'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const Text(
                '¡HOLA!',
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
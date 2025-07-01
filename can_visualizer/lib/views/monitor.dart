import 'package:can_visualizer/widgets/logger.dart';
import 'package:can_visualizer/widgets/panel_datos.dart';
import 'package:flutter/material.dart';

class Monitor extends StatelessWidget {
  const Monitor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Datos en Vivo')),
      body: Row(
        children: const [
          Expanded(
            flex: 2,
            child: PanelDatos(info:"INSERTAR INFO DEL STREAM :D"),
          ),
          VerticalDivider(width: 1),
          Expanded(
            flex: 2,
            child: Logger(),
          ),
        ],
      ),
    );
  }
}
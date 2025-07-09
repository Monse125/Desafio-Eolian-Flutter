import 'package:flutter/material.dart';
import 'dart:async';

//import 'package:can_visualizer/widgets/logger_widget.dart';
import 'package:can_visualizer/widgets/panel_datos.dart';
import '../stream/stream_can.dart';
import '../data_engine.dart';
import '../logger/logger.dart';

class Monitor extends StatefulWidget {
  const Monitor({super.key});

  @override
  State<Monitor> createState() => _MonitorState();
}

class _MonitorState extends State<Monitor> {
  StreamSubscription? _subscription;
  late final DataEngine _engine;

  @override
  void initState(){
    super.initState();
    _engine = DataEngine(logger: Logger.instance);
    Logger.instance.logStartListening(); // Inicio escucha
    _subscription = getCANDataStream().listen((frame) {
      _engine.processFrame(frame); // Solo imprime en consola
    });
  }

  @override
  void dispose() {
    Logger.instance.logEndListening();
    _subscription?.cancel();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Datos en Vivo')),
      body: AnimatedBuilder(
        animation: _engine, 
        builder: (context, _){
          final data = _engine.currentData;
          return Column(children: [
            for (var id in [1,2,3])
              Card(
                margin: const EdgeInsets.all(16),
                child: ListTile(
                  title: Text('ID $id'),
                  subtitle: Text(
                    data[id]?.toString() ?? 'Sin datos',
                    style: const TextStyle(fontSize: 24,)
                  ),
                )
              )
          ],
          );
        })
    );
  }
}
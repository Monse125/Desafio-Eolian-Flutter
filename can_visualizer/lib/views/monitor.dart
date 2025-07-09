import 'package:flutter/material.dart';


import '../data_engine.dart';
import '../logger/logger.dart';

class Monitor extends StatefulWidget {
  const Monitor({super.key});

  @override
  State<Monitor> createState() => _MonitorState();
}

class _MonitorState extends State<Monitor> {
  late final DataEngine _engine;

  @override
  void initState() {
    super.initState();
    _engine = DataEngine(logger: Logger.instance);
    _engine.startListening();
  }

  @override
  void dispose() {
    _engine.stopListening();
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
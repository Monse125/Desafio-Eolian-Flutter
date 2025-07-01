import 'package:flutter/material.dart';

class PanelDatos extends StatelessWidget {
  
  final String info;
  const PanelDatos({super.key,required this.info});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          const Text('📊 DATOS', style: TextStyle(fontSize: 50, )),
          const Divider(),
          Expanded(
            child: Center(
              child: Column(
                
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  const Text('Info recibida:',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20,),
                  Text(
                    info,
                    style: const TextStyle(fontSize: 20, color: Colors.blueAccent),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
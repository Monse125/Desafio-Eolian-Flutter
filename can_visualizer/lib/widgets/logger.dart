import 'package:flutter/material.dart';

class Logger extends StatelessWidget {
  const Logger({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade800,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            '📝 LOGGER',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          Divider(color: Colors.white),
          Expanded(
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                '>>> Logs irán aquí...',
                style: TextStyle(color: Colors.white70, fontFamily: 'Courier'),
              ),
            ),
          ),
        ],
      ),
    );
  }


}
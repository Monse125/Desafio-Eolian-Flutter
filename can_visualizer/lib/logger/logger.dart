import '../stream/can_frame.dart';
import 'dart:io';
import 'package:path/path.dart' as p;

class Logger {
  final String sessionFilePath;

  Logger._(this.sessionFilePath);

  static Logger? _instance;

  static Logger init() {
    if (_instance != null) return _instance!;
    final now = DateTime.now();
    final fileName = 'session_${now.toIso8601String().replaceAll(':', '-')}.log';
    final dir = Directory('logs'); // Puedes cambiar esto si quieres otra carpeta
    if (!dir.existsSync()) {
    dir.createSync(recursive: true);
    }
    final path = p.join(dir.path, fileName);
    _instance = Logger._(path);
    return _instance!;
    }

  /// Obtén la instancia global
  static Logger get instance => _instance!;

  void logStartListening() {
    final now = DateTime.now();
    final entry = '--- Inicio de escucha: $now ---\n';
    File(sessionFilePath).writeAsStringSync(entry, mode: FileMode.append);
  }

  void logEndListening() {
    final now = DateTime.now();
    final entry = '--- Fin de escucha: $now ---\n';
    File(sessionFilePath).writeAsStringSync(entry, mode: FileMode.append);
  }

  void logFrame(CANFrame frame) {
    final now = DateTime.now();
    final entry = '[$now] Frame recibido: id=${frame.id}, data=${frame.data}\n';
    File(sessionFilePath).writeAsStringSync(entry, mode: FileMode.append);
    print(entry.trim());
  }
  
}
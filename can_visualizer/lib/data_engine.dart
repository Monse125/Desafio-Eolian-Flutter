import 'package:flutter/foundation.dart';
import 'stream/can_frame.dart';
import 'logger/logger.dart';

class DataEngine extends ChangeNotifier {
  final Map<int, List<int>> _latestData = {};
  final Logger logger;

  DataEngine({required this.logger});

  Map<int, List<int>> get currentData => Map.unmodifiable(_latestData);

  void processFrame(CANFrame frame) {
    _latestData[frame.id] = frame.data;

    logger.logFrame(frame); // Notifica al logger
    notifyListeners();      // Notifica a la UI
  }
}
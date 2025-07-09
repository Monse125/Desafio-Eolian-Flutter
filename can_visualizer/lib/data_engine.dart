import 'package:flutter/foundation.dart';
import 'stream/can_frame.dart';
import 'logger/logger.dart';
import 'stream/stream_can.dart';

import 'dart:async';

class DataEngine extends ChangeNotifier {
  final Map<int, List<int>> _latestData = {};
  final Logger logger;
  StreamSubscription? _subscription;

  DataEngine({required this.logger});

  Map<int, List<int>> get currentData => Map.unmodifiable(_latestData);

  void processFrame(CANFrame frame) {
    _latestData[frame.id] = frame.data;

    logger.logFrame(frame); // Notifica al logger
    notifyListeners();      // Notifica a la UI
  }

  void startListening() {
    logger.logStartListening();
    _subscription = getCANDataStream().listen(processFrame);
  }

  void stopListening() {
    logger.logEndListening();
    _subscription?.cancel();
  }

  @override
  void dispose() {
    stopListening();
    super.dispose();
  }

}
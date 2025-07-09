import 'dart:async';
import 'dart:math';
import 'can_frame.dart';

Stream<CANFrame> getCANDataStream() async* {
  final random = Random();

  while (true) {
    await Future.delayed(const Duration(seconds: 1));
    
      // ID aleatorio entre 1 y 3
    final int randomId = random.nextInt(3) + 1;

    // Data aleatoria de 8 bytes (como si fueran sensores)
    final List<int> randomData = List.generate(8, (_) => random.nextInt(256));

    yield CANFrame(randomId, randomData);

    await Future.delayed(const Duration(seconds: 1));
  }
}


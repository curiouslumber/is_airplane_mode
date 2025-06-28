import 'package:flutter/services.dart';

class IsAirplaneMode {
  static const MethodChannel _channel = MethodChannel('is_airplane_mode');

  static Future<bool> get isAirplaneMode async {
    final bool result = await _channel.invokeMethod('isAirplaneMode');
    return result;
  }
}

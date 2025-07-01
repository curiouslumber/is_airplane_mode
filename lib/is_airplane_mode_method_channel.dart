import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'is_airplane_mode_platform_interface.dart';

/// An implementation of [IsAirplaneModePlatform] that uses method channels.
class MethodChannelIsAirplaneMode extends IsAirplaneModePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('is_airplane_mode');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>(
      'getPlatformVersion',
    );
    return version;
  }
}

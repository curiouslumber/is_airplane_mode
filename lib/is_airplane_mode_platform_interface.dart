import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'is_airplane_mode_method_channel.dart';

abstract class IsAirplaneModePlatform extends PlatformInterface {
  /// Constructs a IsAirplaneModePlatform.
  IsAirplaneModePlatform() : super(token: _token);

  static final Object _token = Object();

  static IsAirplaneModePlatform _instance = MethodChannelIsAirplaneMode();

  /// The default instance of [IsAirplaneModePlatform] to use.
  ///
  /// Defaults to [MethodChannelIsAirplaneMode].
  static IsAirplaneModePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [IsAirplaneModePlatform] when
  /// they register themselves.
  static set instance(IsAirplaneModePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

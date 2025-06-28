import 'package:flutter_test/flutter_test.dart';
import 'package:is_airplane_mode/is_airplane_mode_platform_interface.dart';
import 'package:is_airplane_mode/is_airplane_mode_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockIsAirplaneModePlatform
    with MockPlatformInterfaceMixin
    implements IsAirplaneModePlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final IsAirplaneModePlatform initialPlatform =
      IsAirplaneModePlatform.instance;

  test('$MethodChannelIsAirplaneMode is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelIsAirplaneMode>());
  });
}

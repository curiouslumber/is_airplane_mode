import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:is_airplane_mode/is_airplane_mode_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelIsAirplaneMode platform = MethodChannelIsAirplaneMode();
  const MethodChannel channel = MethodChannel('is_airplane_mode');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}

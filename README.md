# is_airplane_mode

A Flutter plugin that allows you to check if the device is in airplane mode.

## Usage

To use this plugin, add `is_airplane_mode` as a [dependency in your pubspec.yaml file](https://flutter.dev/docs/development/platform-integration/platform-channels).

Then, import the package and call `IsAirplaneMode.isAirplaneMode` to check if the device is in airplane mode:

```dart
import 'package:is_airplane_mode/is_airplane_mode.dart';

Future<void> _checkAirplaneMode() async {
  final isOn = await IsAirplaneMode.isAirplaneMode;
  if (kDebugMode) {
    print("Airplane Mode is ${isOn ? "ON" : "OFF"}");
  }
}
```

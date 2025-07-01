# is_airplane_mode

A Flutter plugin that allows you to check if the device is in airplane mode.

## Usage

Call `IsAirplaneMode.isAirplaneMode` to check if the device is in airplane mode.

## How this works

### Android

Checks directly for airplane mode since it is accessible.

### iOS

Checks if the device has no network signal. On iOS devices which do not support celluar networks, this will always return true i.e airplane mode is on.

## Platform Support

### Android

Support Sdk 21 and above.

### iOS

Support iOS 11.0 and above.

## License

MIT License

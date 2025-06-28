import Flutter
import UIKit
import CoreTelephony

public class IsAirplaneModePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "is_airplane_mode", binaryMessenger: registrar.messenger())
    let instance = IsAirplaneModePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "isAirplaneMode":
      let isOn = hasNoNetworkSignal()
      result(isOn)
    default:
      result(FlutterMethodNotImplemented)
    }
  }

  private func hasNoNetworkSignal() -> Bool {
        let telephonyInfo = CTTelephonyNetworkInfo()
        guard let radioAccessTechnology = telephonyInfo.serviceCurrentRadioAccessTechnology,
              !radioAccessTechnology.isEmpty else {
            return true  // No network signal
        }
        return false  // Network is available
    }
}

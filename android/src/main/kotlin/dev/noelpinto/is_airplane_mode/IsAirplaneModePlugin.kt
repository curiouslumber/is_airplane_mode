package dev.noelpinto.is_airplane_mode

import android.content.Context
import android.provider.Settings
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result

/** IsAirplaneModePlugin */
class IsAirplaneModePlugin: FlutterPlugin, MethodCallHandler {
  private lateinit var channel : MethodChannel

  override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "is_airplane_mode")
    channel.setMethodCallHandler(this)
  }

  override fun onMethodCall(call: MethodCall, result: Result) {
    if (call.method == "isAirplaneMode") {
      val isOn = isAirplaneModeOn(context)
      result.success(isOn)
    } else {
      result.notImplemented()
    }
  }

  /**
 * Returns true if airplane mode is on, false otherwise.
 */
  fun isAirplaneModeOn(context: Context): Boolean {
    return Settings.Global.getInt(
        context.contentResolver,
        Settings.Global.AIRPLANE_MODE_ON,
        0
    ) != 0
  }

  override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }
}

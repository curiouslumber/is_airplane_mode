import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:is_airplane_mode/is_airplane_mode.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Future<void> _checkAirplaneMode() async {
    final isOn = await IsAirplaneMode.isAirplaneMode;
    if (kDebugMode) {
      print("Airplane Mode is ${isOn ? "ON" : "OFF"}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Airplane Mode Checker")),
        body: Center(
          child: ElevatedButton(
            onPressed: _checkAirplaneMode,
            child: Text("Check Airplane Mode"),
          ),
        ),
      ),
    );
  }
}

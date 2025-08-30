import 'package:example/example_model.dart';
import 'package:flutter/material.dart';
import 'package:logger_master/logger_master.dart';

void main() {
  runApp(const MyApp());
  ExampleModel exampleModel = ExampleModel(id: 1, name: "Example");

  // Example usage
  "Hello World".logInfo();
  123.logDebug();
  exampleModel.logWarning();
  exampleModel.name.logError();

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Logger Example")),
        body: const Center(child: Text("Check Logcat for logs")),
      ),
    );
  }
}

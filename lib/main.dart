import 'package:flutter/material.dart';
import 'package:widgets/widgets/cupertino_button_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets',
      home: Scaffold(
        backgroundColor: const Color(0xff132030),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0xFF434243),
          elevation: 0.0,
          title: const Text('This is Widget Learnig Project'),
        ),
        body: const CupertinoButtonWidget(),
      ),
    );
  }
}

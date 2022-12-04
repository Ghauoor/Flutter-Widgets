import 'package:flutter/material.dart';
import 'package:widgets/widgets/list_view.dart';

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
        appBar: AppBar(
          elevation: 0.0,
          // backgroundColor: Colors.amberAccent,
          title: const Text('This is Widget Learnig Project'),
        ),
        body: const ListViewBuilderWidget(),
      ),
    );
  }
}

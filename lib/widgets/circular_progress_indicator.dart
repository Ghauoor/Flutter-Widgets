import 'package:flutter/material.dart';

class CircularProgressindicatorWidget extends StatelessWidget {
  const CircularProgressindicatorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: Colors.amber,
        backgroundColor: Colors.blueGrey,
        //strokeWidth: 100,
      ),
    );
  }
}

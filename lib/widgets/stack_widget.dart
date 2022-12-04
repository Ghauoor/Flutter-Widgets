import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            height: 220,
            width: 220,
            decoration: const BoxDecoration(color: Colors.red),
          ),
          Container(
            height: 210,
            width: 210,
            decoration: const BoxDecoration(color: Colors.orange),
          ),
          Container(
            height: 200,
            width: 200,
            decoration: const BoxDecoration(color: Colors.yellow),
          ),
        ],
      ),
    );
  }
}

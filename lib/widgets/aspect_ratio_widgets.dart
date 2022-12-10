import 'package:flutter/material.dart';

class AspectRatioWidgets extends StatelessWidget {
  const AspectRatioWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      alignment: Alignment.center,
      width: double.infinity,
      height: 150,
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Container(
          color: Colors.deepPurple,
        ),
      ),
    );
  }
}

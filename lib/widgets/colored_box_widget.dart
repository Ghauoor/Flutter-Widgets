import 'package:flutter/material.dart';

class ColoredBoxWidget extends StatelessWidget {
  const ColoredBoxWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: ColoredBox(
        color: Colors.amber,
        child: SizedBox(
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}

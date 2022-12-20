import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        container(Colors.amber, 100, 100),
        container(Colors.purpleAccent, 100, 100),
        container(Colors.white, 100, 100),
      ],
    );
  }

  Container container(Color color, var height, var width) {
    return Container(
      color: color,
      height: height,
      width: width,
    );
  }
}

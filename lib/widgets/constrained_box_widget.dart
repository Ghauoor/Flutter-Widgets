import 'package:flutter/material.dart';

class ConstrainedBoxWidget extends StatelessWidget {
  const ConstrainedBoxWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxHeight: 350,
          maxWidth: 900,
        ),
        child: Container(
          color: Colors.amber,
          width: double.infinity,
        ),
      ),
    );
  }
}

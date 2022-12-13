import 'package:flutter/material.dart';

class CenterWidget extends StatelessWidget {
  const CenterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: Colors.amber,
          child: const Center(
            heightFactor: 5,
            child: Text('Naruto'),
          ),
        ),
      ],
    );
  }
}

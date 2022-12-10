import 'package:flutter/material.dart';

import 'dart:ui';

class BackdropFilterWidget extends StatelessWidget {
  const BackdropFilterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Text(
          '0' * 10000,
          style: const TextStyle(color: Colors.amber),
        ),
        Center(
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 4.0,
                sigmaY: 4.0,
              ),
              child: Container(
                alignment: Alignment.center,
                width: 250,
                height: 250,
                child: const Text(
                  'Blur',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

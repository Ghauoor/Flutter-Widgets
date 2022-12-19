import 'package:flutter/material.dart';

class ColorFilteredWidget extends StatelessWidget {
  const ColorFilteredWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ColorFiltered(
      colorFilter: ColorFilter.mode(
        Colors.white,
        BlendMode.darken,
      ),
      //! Place any asset image and use any combination
      child: FlutterLogo(),
    );
  }
}

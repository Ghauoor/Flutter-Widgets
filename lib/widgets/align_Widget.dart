import 'package:flutter/material.dart';

class AlignWidget extends StatelessWidget {
  const AlignWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 120,
        width: double.infinity,
        color: Colors.blueGrey,
        child: const Align(
          alignment: Alignment.centerRight,
          child: FlutterLogo(
            size: 60,
          ),
        ),
      ),
    );
  }
}

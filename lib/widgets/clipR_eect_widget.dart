import 'package:flutter/material.dart';

class ClipRRectWidget extends StatefulWidget {
  const ClipRRectWidget({Key? key}) : super(key: key);

  @override
  State<ClipRRectWidget> createState() => _ClipRRectWidgetState();
}

class _ClipRRectWidgetState extends State<ClipRRectWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          width: 300,
          height: 300,
          color: Colors.blueGrey,
          child: const FlutterLogo(),
        ),
      ),
    );
  }
}

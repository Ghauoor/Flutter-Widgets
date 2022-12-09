import 'package:flutter/material.dart';

class AnimatedSizedWidget extends StatefulWidget {
  const AnimatedSizedWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedSizedWidget> createState() => _AnimatedSizedWidgetState();
}

class _AnimatedSizedWidgetState extends State<AnimatedSizedWidget> {
  double _size = 300;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _size = _size == 500 ? 150 : 500;
          });
        },
        child: Container(
          color: Colors.white,
          child: AnimatedSize(
            curve: Curves.easeInOutBack,
            duration: const Duration(seconds: 3),
            child: FlutterLogo(size: _size),
          ),
        ),
      ),
    );
  }
}

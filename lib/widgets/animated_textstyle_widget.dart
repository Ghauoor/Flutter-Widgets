import 'package:flutter/material.dart';

class AnimatedTextStyleWidget extends StatefulWidget {
  const AnimatedTextStyleWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedTextStyleWidget> createState() =>
      _AnimatedTextStyleWidgetState();
}

class _AnimatedTextStyleWidgetState extends State<AnimatedTextStyleWidget> {
  bool _first = false;
  double _fontSize = 60;
  Color _color = Colors.amber;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 120,
            child: AnimatedDefaultTextStyle(
              child: const Text('Naruto'),
              style: TextStyle(
                color: _color,
                fontSize: _fontSize,
                fontWeight: FontWeight.bold,
              ),
              duration: const Duration(milliseconds: 300),
            ),
          ),
          const SizedBox(height: 10),
          TextButton(
            onPressed: () {
              setState(() {
                _fontSize = _first ? 100 : 60;
                _color = _first ? Colors.amber : Colors.blueGrey;
                _first = !_first;
              });
            },
            child: const Text('Switch'),
          )
        ],
      ),
    );
  }
}

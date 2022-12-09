import 'package:flutter/material.dart';

class AnimatedPositionedWidget extends StatefulWidget {
  const AnimatedPositionedWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedPositionedWidget> createState() =>
      _AnimatedPositionedWidgetState();
}

class _AnimatedPositionedWidgetState extends State<AnimatedPositionedWidget> {
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      
      child: SizedBox(
        width: 200,
        height: 350,
        child: Stack(
          children: <Widget>[
            AnimatedPositioned(
              curve: Curves.fastOutSlowIn,
              width: _selected ? 200 : 50,
              height: _selected ? 50.0 : 200,
              top: _selected ? 50.0 : 150.0,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _selected = !_selected;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
              duration: const Duration(seconds: 2),
            )
          ],
        ),
      ),
    );
  }
}

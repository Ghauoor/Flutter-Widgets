import 'package:flutter/material.dart';

class CustomPaintWidget extends StatelessWidget {
  const CustomPaintWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: CustomPaint(
          child: const Text(
            ' Pac Man',
            style: TextStyle(
              color: Colors.black,
              backgroundColor: Colors.white54,
              fontSize: 30,
            ),
          ),
          painter: DemoPainter(),
        ),
      ),
    );
  }
}

class DemoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var center = size / 2;

    var paint = Paint()..color = Colors.yellow;

    canvas.drawArc(
        Rect.fromCenter(
          center: Offset(center.width, center.height),
          width: 250,
          height: 250,
        ),
        0.4,
        2 * 3.14 - 0.8,
        true,
        paint);
  }

  @override
  bool shouldRepaint(DemoPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(DemoPainter oldDelegate) => false;
}

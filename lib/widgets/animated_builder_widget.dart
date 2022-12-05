import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimatedBuilderWidget extends StatefulWidget {
  const AnimatedBuilderWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedBuilderWidget> createState() => _AnimatedBuilderWidgetState();
}

class _AnimatedBuilderWidgetState extends State<AnimatedBuilderWidget>
    with TickerProviderStateMixin {
  //! Controller for animation
  late final AnimationController _controller = AnimationController(
    duration: const Duration(
      seconds: 10,
    ),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _controller,
        child: const FlutterLogo(
          size: 100,
        ),
        builder: (BuildContext context, Widget? child) {
          return Transform.rotate(
            angle: _controller.value * 15.0 * math.pi,
            child: child,
          );
        },
      ),
    );
  }
}

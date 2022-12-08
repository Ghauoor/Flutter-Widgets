import 'package:flutter/material.dart';

class AnimatedOpacityWidget extends StatefulWidget {
  const AnimatedOpacityWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedOpacityWidget> createState() => _AnimatedOpacityWidgetState();
}

class _AnimatedOpacityWidgetState extends State<AnimatedOpacityWidget> {
  double opacityLevel = 1.0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AnimatedOpacity(
            opacity: opacityLevel,
            duration: const Duration(seconds: 2),
            child: const FlutterLogo(size: 250),
            curve: Curves.bounceInOut,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                opacityLevel = opacityLevel == 0.0 ? 1 : 0.0;
              });
            },
            child: const Text('Fade Away'),
          ),
        ],
      ),
    );
  }
}

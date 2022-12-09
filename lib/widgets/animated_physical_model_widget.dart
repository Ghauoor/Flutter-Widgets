import 'package:flutter/material.dart';

class AnimatedPhysicalModelWidget extends StatefulWidget {
  const AnimatedPhysicalModelWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedPhysicalModelWidget> createState() =>
      _AnimatedPhysicalModelWidgetState();
}

class _AnimatedPhysicalModelWidgetState
    extends State<AnimatedPhysicalModelWidget> {
  bool isFlat = true;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedPhysicalModel(
            curve: Curves.fastOutSlowIn,
            child: const SizedBox(
              height: 300,
              width: 300,
              child: FlutterLogo(),
            ),
            shape: BoxShape.rectangle,
            elevation: isFlat ? 0 : 10.0,
            color: Colors.amber,
            shadowColor: Colors.white,
            duration: const Duration(milliseconds: 500),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                isFlat = !isFlat;
              });
            },
            child: const Text('Click'),
          )
        ],
      ),
    );
  }
}

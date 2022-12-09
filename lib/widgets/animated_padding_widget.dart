import 'package:flutter/material.dart';

class AnimatedPaddingWidget extends StatefulWidget {
  const AnimatedPaddingWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedPaddingWidget> createState() => _AnimatedPaddingWidgetState();
}

class _AnimatedPaddingWidgetState extends State<AnimatedPaddingWidget> {
  double padVal = 0.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AnimatedPadding(
          padding: EdgeInsets.all(padVal),
          duration: const Duration(seconds: 2),
          curve: Curves.decelerate,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            color: Colors.amber,
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
          onPressed: () {
            setState(() {
              padVal = padVal == 0.0 ? 100.0 : 0.0;
            });
          },
          child: const Text('Change Padding'),
        ),
        Text(
          'Padding = $padVal',
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

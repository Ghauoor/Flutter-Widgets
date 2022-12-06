import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  const AnimatedContainerWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerWidget> createState() =>
      _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Center(
        child: AnimatedContainer(
          width: isSelected ? 300 : 100,
          height: isSelected ? 200 : 200,
          color: isSelected ? Colors.amber : Colors.amberAccent,
          duration: const Duration(seconds: 1),
          alignment: isSelected ? Alignment.center : Alignment.topCenter,
          curve: Curves.ease,
          child: const FlutterLogo(
            size: 100,
            style: FlutterLogoStyle.horizontal,
          ),
        ),
      ),
    );
  }
}

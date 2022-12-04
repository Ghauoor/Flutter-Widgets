import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                height: 200,
                width: 100,
                color: Colors.orange,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                height: 200,
                width: 100,
                color: Colors.amberAccent,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 200,
                width: 100,
                color: Colors.orangeAccent,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

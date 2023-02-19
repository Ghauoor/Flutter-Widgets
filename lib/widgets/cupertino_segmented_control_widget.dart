import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSegmentedControlWidget extends StatefulWidget {
  const CupertinoSegmentedControlWidget({Key? key}) : super(key: key);

  @override
  State<CupertinoSegmentedControlWidget> createState() =>
      _CupertinoSegmentedControlWidgetState();
}

class _CupertinoSegmentedControlWidgetState
    extends State<CupertinoSegmentedControlWidget> {
  String? currentText;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CupertinoSegmentedControl(
            children: {
              'Flutter': Container(color: currentText == 'Flutter' ? Colors.orangeAccent[100] : Colors.white),
              'Android Native': Container(),
              'React': Container(),
            },
            onValueChanged: (String value) {
              setState(() {
                currentText = value;
              });
            },
          ),
          const SizedBox(
            height: 50,
          ),
          currentText != null
              ? Text(
                  currentText!,
                  style: const TextStyle(fontSize: 50),
                )
              : Container()
        ],
      ),
    );
  }
}

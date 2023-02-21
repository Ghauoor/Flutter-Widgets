import 'package:flutter/cupertino.dart';

class CupertinoSwitchWidget extends StatefulWidget {
  const CupertinoSwitchWidget({Key? key}) : super(key: key);

  @override
  State<CupertinoSwitchWidget> createState() => _CupertinoSwitchWidgetState();
}

class _CupertinoSwitchWidgetState extends State<CupertinoSwitchWidget> {
  bool _light = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoSwitch(
          value: _light,
          onChanged: (bool value) {
            setState(() {
              _light = value;
            });
          }),
    );
  }
}

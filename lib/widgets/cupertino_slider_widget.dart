import 'package:flutter/cupertino.dart';

class CupertinoSliderWidget extends StatefulWidget {
  const CupertinoSliderWidget({Key? key}) : super(key: key);

  @override
  State<CupertinoSliderWidget> createState() => _CupertinoSliderWidgetState();
}

class _CupertinoSliderWidgetState extends State<CupertinoSliderWidget> {
  double _currVal = 1;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Text(_currVal.toString()),
          const SizedBox(
            height: 50,
          ),
          CupertinoSlider(
            value: _currVal,
            min: 0,
            max: 10,
            divisions: 10,
            onChanged: (selectedVal) {
              setState(() {
                _currVal = selectedVal;
              });
            },
          ),
        ],
      ),
    );
  }
}

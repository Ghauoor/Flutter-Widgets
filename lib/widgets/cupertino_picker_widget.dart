import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPickerWidget extends StatefulWidget {
  const CupertinoPickerWidget({Key? key}) : super(key: key);

  @override
  State<CupertinoPickerWidget> createState() => _CupertinoPickerWidgetState();
}

class _CupertinoPickerWidgetState extends State<CupertinoPickerWidget> {
  int _selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: CupertinoButton.filled(
            child: Text('Value Is = $_selectedValue'),
            onPressed: () => showCupertinoModalPopup(
              context: context,
              builder: (_) => SizedBox(
                width: double.infinity,
                height: 250,
                child: CupertinoPicker(
                  itemExtent: 30,
                  backgroundColor: Colors.white,
                  scrollController: FixedExtentScrollController(
                    initialItem: 1,
                  ),
                  onSelectedItemChanged: (int index) {
                    setState(() {
                      _selectedValue = index;
                    });
                  },
                  children: List<Widget>.generate(
                    100,
                    (int index) {
                      return Center(
                        child: Text('Item $index'),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

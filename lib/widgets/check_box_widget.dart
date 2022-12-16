import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({Key? key}) : super(key: key);

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Checkbox(
        value: isChecked,
        tristate: true,
        activeColor: Colors.amber,
        onChanged: (newVal) {
          setState(() {
            isChecked = newVal;
          });
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CheckboxListTileWidget extends StatefulWidget {
  const CheckboxListTileWidget({Key? key}) : super(key: key);

  @override
  State<CheckboxListTileWidget> createState() => _CheckboxListTileWidgetState();
}

class _CheckboxListTileWidgetState extends State<CheckboxListTileWidget> {
  bool? _isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CheckboxListTile(
        title: const Text('Checked Box List Tile'),
        value: _isCheck,
        onChanged: (bool? newVal) {
          setState(() {
            _isCheck = newVal;
          });
        },
        activeColor: Colors.amber,
        checkColor: Colors.white,
      ),
    );
  }
}

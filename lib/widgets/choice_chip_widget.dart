import 'package:flutter/material.dart';

class ChoiceChipWidget extends StatefulWidget {
  const ChoiceChipWidget({Key? key}) : super(key: key);

  @override
  State<ChoiceChipWidget> createState() => _ChoiceChipWidgetState();
}

class _ChoiceChipWidgetState extends State<ChoiceChipWidget> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ChoiceChip(
        label: const Text('Choice Chip Widget'),
        selected: _isSelected,
        selectedColor: Colors.amber,
        onSelected: (value) {
          setState(() {
            _isSelected = value;
          });
        },
      ),
    );
  }
}

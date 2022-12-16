import 'package:flutter/material.dart';

class ChipWidget extends StatelessWidget {
  const ChipWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Chip(
        label: const Text('This is a chip widget'),
        onDeleted: () {
          debugPrint('Do This');
        },
      ),
    );
  }
}

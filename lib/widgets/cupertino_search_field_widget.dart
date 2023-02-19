import 'package:flutter/cupertino.dart';

class CupertinoSearchTextFieldWidget extends StatelessWidget {
  CupertinoSearchTextFieldWidget({Key? key}) : super(key: key);
  final TextEditingController _textEditingController =
      TextEditingController(text: 'Ghayoor Hussain');
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CupertinoColors.systemOrange,
      padding: const EdgeInsets.all(10.0),
      child: CupertinoSearchTextField(
        controller: _textEditingController,
      ),
    );
  }
}

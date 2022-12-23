import 'package:flutter/cupertino.dart';

class CupertinoButtonWidget extends StatelessWidget {
  const CupertinoButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CupertinoButton(
              child: const Text('CupertinoButton'), onPressed: () {}),
          const SizedBox(
            height: 40,
          ),
          CupertinoButton.filled(
              child: const Text(' CupertinoButton Filled'), onPressed: () {})
        ],
      ),
    );
  }
}

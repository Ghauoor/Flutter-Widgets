import 'package:flutter/cupertino.dart';

class CupertinoAlertDialogWidget extends StatefulWidget {
  const CupertinoAlertDialogWidget({Key? key}) : super(key: key);

  @override
  State<CupertinoAlertDialogWidget> createState() =>
      _CupertinoAlertDialogWidgetState();
}

class _CupertinoAlertDialogWidgetState
    extends State<CupertinoAlertDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Center(
      child: CupertinoButton(
        child: const Text('CupertinoAlertDialog'),
        onPressed: () {
          showCupertinoDialog(
              context: context,
              builder: (BuildContext context) {
                return CupertinoAlertDialog(
                  title: const Text('CupertinoAlertDialog Widget'),
                  content: const Text('Hello!!!!!!!!!!!!!'),
                  actions: <CupertinoDialogAction>[
                    CupertinoDialogAction(
                      child: const Text('NO'),
                      isDestructiveAction: true,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    CupertinoDialogAction(
                      child: const Text('YES'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              });
        },
      ),
    ));
  }
}

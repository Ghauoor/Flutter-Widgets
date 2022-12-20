import 'package:flutter/cupertino.dart';

class CupertinoActionSheetActionWidget extends StatefulWidget {
  const CupertinoActionSheetActionWidget({Key? key}) : super(key: key);

  @override
  State<CupertinoActionSheetActionWidget> createState() =>
      _CupertinoActionSheetActionWidgetState();
}

class _CupertinoActionSheetActionWidgetState
    extends State<CupertinoActionSheetActionWidget> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton(
          child: const Text('Cupertino Action Sheet'),
          onPressed: () {
            showCupertinoModalPopup(
                context: context,
                builder: (BuildContext context) {
                  return CupertinoActionSheet(
                    title: const Text('Must Learn Flutter'),
                    message: const Text('Your Messege'),
                    actions: <CupertinoActionSheetAction>[
                      CupertinoActionSheetAction(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Do Somsthing'),
                      ),
                      CupertinoActionSheetAction(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Do Somsthing Else'),
                      ),
                    ],
                  );
                });
          },
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPopupSurfaceWidget extends StatelessWidget {
  const CupertinoPopupSurfaceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Center(
      child: CupertinoButton(
        child: const Text('Click Me'),
        onPressed: () {
          showCupertinoModalPopup(
            context: context,
            builder: (BuildContext context) {
              return CupertinoPopupSurface(
                child: Container(
                  color: Colors.white,
                  alignment: Alignment.center,
                  height: 400,
                  child: CupertinoButton(
                      child: const Text('Close'),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
              );
            },
          );
        },
      ),
    ));
  }
}

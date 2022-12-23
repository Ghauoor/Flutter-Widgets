import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoContextMenuWidget extends StatelessWidget {
  const CupertinoContextMenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 100,
          height: 100,
          child: CupertinoContextMenu(
            actions: [
              CupertinoContextMenuAction(
                child: const Text('Zoom'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              CupertinoContextMenuAction(
                child: const Text('Zoom Out'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
            child: Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Google-flutter-logo.svg/1920px-Google-flutter-logo.svg.png',
            ),
          ),
        ),
      ),
    );
  }
}

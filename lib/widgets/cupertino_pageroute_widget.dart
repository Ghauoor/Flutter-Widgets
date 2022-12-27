import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPageRouteWidget extends StatelessWidget {
  const CupertinoPageRouteWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoButton.filled(
        child: const Text('Click for New Page'),
        onPressed: () => Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => const PageTwo(),
          ),
        ),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Text('Page Two'),
    );
  }
}

import 'package:flutter/cupertino.dart';

class CupertinoActivityIndicatorWidget extends StatefulWidget {
  const CupertinoActivityIndicatorWidget({Key? key}) : super(key: key);

  @override
  State<CupertinoActivityIndicatorWidget> createState() =>
      _CupertinoActivityIndicatorWidgetState();
}

class _CupertinoActivityIndicatorWidgetState
    extends State<CupertinoActivityIndicatorWidget> {
  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      child: Center(
        child: CupertinoActivityIndicator(
          radius: 50,
        ),
      ),
    );
  }
}

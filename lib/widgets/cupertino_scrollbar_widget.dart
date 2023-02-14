import 'package:flutter/cupertino.dart';

class CupertinoScrollbarWidget extends StatelessWidget {
  const CupertinoScrollbarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoScrollbar(
        child: ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Center(
          child: Text(
            '$index',
            style: const TextStyle(fontSize: 30),
          ),
        );
      },
      itemCount: 50,
    ));
  }
}

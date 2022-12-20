import 'package:flutter/cupertino.dart';

class CupertinoAPPWidget extends StatelessWidget {
  const CupertinoAPPWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'Cupertino App',
      theme: CupertinoThemeData(
          brightness: Brightness.dark,
          primaryColor: CupertinoColors.systemOrange,
          scaffoldBackgroundColor: Color.fromARGB(255, 18, 32, 47)),
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Cupertino Appbar'),
        ),
        child: Center(
          child: Text('Flutter Cupertino App'),
        ),
      ),
    );
  }
}

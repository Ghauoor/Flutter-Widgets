import 'package:flutter/material.dart';

class BuilderWidget extends StatelessWidget {
  const BuilderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myWidget(),
    );
  }
}

myWidget() => Builder(
      builder: (BuildContext context) {
        return Center(
          child: Text(
            'Dummy Text With Builder Method',
            style: Theme.of(context).textTheme.subtitle1,
          ),
        );
      },
    );

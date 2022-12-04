import 'package:flutter/material.dart';
import 'package:widgets/widgets/list_tile.dart';

class ListViewBuilderWidget extends StatelessWidget {
  const ListViewBuilderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1000,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return const ListTileWidget();
      },
    );
  }
}

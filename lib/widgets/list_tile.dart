import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1331&q=80',
        ),
      ),
      title: Text('Ghayoor Hussain'),
      subtitle: Text('Tech Enth and Striver'),
      trailing: Text('2:24 PM'),
    ));
  }
}

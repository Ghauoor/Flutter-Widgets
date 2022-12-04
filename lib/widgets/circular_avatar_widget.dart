import 'package:flutter/material.dart';

class CircularAvatarWidget extends StatelessWidget {
  const CircularAvatarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircleAvatar(
        //backgroundColor: Colors.amberAccent,
        minRadius: 20,
        maxRadius: 180,
        backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1457449940276-e8deed18bfff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
        ),
      ),
    );
  }
}

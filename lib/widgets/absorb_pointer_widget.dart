import 'package:flutter/material.dart';

class AbsorbPointerWidget extends StatelessWidget {
  const AbsorbPointerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: AlignmentDirectional.centerEnd,
        children: [
          SizedBox(
            width: 200,
            height: 100,
            child: ElevatedButton(
              onPressed: () {},
              child: null,
            ),
          ),
          SizedBox(
            width: 100,
            height: 200,
            child: AbsorbPointer(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                onPressed: () {},
                child: null,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

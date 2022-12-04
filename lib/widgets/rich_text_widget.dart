import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          text: 'Do\'nt have any account??',
          children: const [
            TextSpan(
              text: ' SignUp',
              style: TextStyle(
                decoration: TextDecoration.underline,
                decorationThickness: 2,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
          style: Theme.of(context)
              .textTheme
              .bodyText1
              ?.copyWith(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AbotDialog extends StatelessWidget {
  const AbotDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('Show About Dialog'),
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).dialogBackgroundColor,
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(100),
        ),
        onPressed: () => {
          showDialog(
            context: context,
            builder: (context) => const AboutDialog(
              applicationIcon: FlutterLogo(),
              applicationLegalese: 'Legalese',
              applicationName: 'Widget App',
              applicationVersion: '0.01',
              children: [
                Text('This is a Simple Show Case Text'),
              ],
            ),
          ),
        },
      ),
    );
  }
}

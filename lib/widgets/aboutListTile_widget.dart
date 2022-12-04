import 'package:flutter/material.dart';

class AboutlistTile extends StatelessWidget {
  const AboutlistTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: AboutListTile(
        dense: true,
        applicationIcon: FlutterLogo(),
        applicationLegalese: 'Legalese',
        applicationName: 'Widget App',
        applicationVersion: '0.01',
        aboutBoxChildren: [
          Text('This is a Dummy Text'),
        ],
      ),
    );
  }
}

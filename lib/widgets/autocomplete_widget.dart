import 'package:flutter/material.dart';

class AutocompleteWidget extends StatelessWidget {
  const AutocompleteWidget({Key? key}) : super(key: key);

  static const List<String> listItems = <String>[
    'Naruto',
    'Hinata',
    'Luffy',
    'Sanji',
    'Zoro',
  ];
  @override
  Widget build(BuildContext context) {
    return Autocomplete(
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue == '') {
          return const Iterable<String>.empty();
        }
        return listItems.where(
          (String item) {
            return item.contains(textEditingValue.text.toLowerCase());
          },
        );
      },
      onSelected: (String item) {
        print('The $item is Selected');
      },
    );
  }
}

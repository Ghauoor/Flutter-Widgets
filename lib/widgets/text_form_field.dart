import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          cursorColor: Colors.green,
          style: const TextStyle(
            fontSize: 22,
            color: Colors.green,
          ),
          decoration: textFormFieldDecoration(),
          validator: (String? value) {
            return (value != null && value.contains('@'))
                ? 'Do not use the @ char.'
                : null;
          },
          onChanged: (value) {
            print(value);
          },
        ),
      ),
    );
  }

  InputDecoration textFormFieldDecoration() {
    return InputDecoration(
      hintText: 'Email',
      hintStyle: TextStyle(
        fontSize: 14,
        color: Colors.grey.shade600,
      ),
      // labelText: 'Email',
      filled: true,
      fillColor: Colors.grey.withOpacity(0.3),
      prefixIcon: const Icon(
        Icons.alternate_email,
        color: Colors.red,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.red,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.green,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

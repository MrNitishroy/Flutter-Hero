import 'package:flutter/material.dart';

class SimpleInputField extends StatelessWidget {
  const SimpleInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          decoration: InputDecoration(
            fillColor: Theme.of(context).colorScheme.secondaryContainer,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            hintText: "Input Here",
          ),
        ),
      ],
    );
  }
}

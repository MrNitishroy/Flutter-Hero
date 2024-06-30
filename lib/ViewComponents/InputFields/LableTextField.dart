import 'package:flutter/material.dart';

class LableTextField extends StatelessWidget {
  const LableTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Type something',
            labelStyle: Theme.of(context).textTheme.labelLarge,
            border: OutlineInputBorder(
              
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.primaryContainer,
              ),
            ),
          ),
          onChanged: (String value) {},
        )
      ],
    );
  }
}

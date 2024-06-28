import 'package:flutter/material.dart';

class InputWithIcon extends StatelessWidget {
  const InputWithIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          decoration: InputDecoration(
            fillColor: Theme.of(context).colorScheme.secondaryContainer,
            filled: true,
            prefixIcon: Icon(Icons.alternate_email),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            hintText: "Enter email id",
          ),
        ),
      ],
    );
  }
}

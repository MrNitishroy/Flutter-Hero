import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OnlyAlphabetsField extends StatelessWidget {
  const OnlyAlphabetsField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Text(
              "Enter Only alphabets ",
              style: Theme.of(context).textTheme.labelMedium,
            )
          ],
        ),
        SizedBox(height: 10),
        TextField(
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]')),
          ],
          decoration: InputDecoration(
            fillColor: Theme.of(context).colorScheme.secondaryContainer,
            filled: true,
            prefixIcon: Icon(Icons.abc),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            hintText: "Alphabets only",
          ),
        ),
      ],
    );
  }
}

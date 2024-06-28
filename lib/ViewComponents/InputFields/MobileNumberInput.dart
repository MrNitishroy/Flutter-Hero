import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NumberInput extends StatelessWidget {
  const NumberInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Text(
              "Only Number enter",
              style: Theme.of(context).textTheme.labelMedium,
            )
          ],
        ),
        SizedBox(height: 10),
        TextField(
          keyboardType: TextInputType.number,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly,
          ],
          decoration: InputDecoration(
            fillColor: Theme.of(context).colorScheme.secondaryContainer,
            filled: true,
            prefixIcon: Icon(Icons.numbers_rounded),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            hintText: "Enter Number Only",
          ),
        ),
      ],
    );
  }
}

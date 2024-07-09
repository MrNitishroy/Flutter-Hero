import 'package:flutter/material.dart';

class MaterialButtons extends StatelessWidget {
  const MaterialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
          onPressed: () {},
          child: Text("Elevated Button"),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          label: Text("Elevated Icon Button"),
          icon: Icon(Icons.lock),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.heart_broken),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

class DemoContactPage extends StatelessWidget {
  const DemoContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      body: Center(
        child: Text("Contact Page"),
      ),
    );
  }
}

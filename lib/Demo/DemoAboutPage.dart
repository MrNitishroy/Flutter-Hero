import 'package:flutter/material.dart';

class DemoAboutPage extends StatelessWidget {
  const DemoAboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      body: Center(
        child: Text("About Page"),
      ),
    );
  }
}

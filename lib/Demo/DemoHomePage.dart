import 'package:flutter/material.dart';

class DemoHomePage extends StatelessWidget {
  const DemoHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      body: Center(
        child: Text("Home Page"),
      ),
    );
  }
}

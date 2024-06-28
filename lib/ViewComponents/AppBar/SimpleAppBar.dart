import 'package:flutter/material.dart';

class SimpleAppBar extends StatelessWidget {
  const SimpleAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_rounded),
          ),
        ],
        leading: IconButton(
            onPressed: () {}, icon: Icon(Icons.format_align_left_sharp)),
        title: Text(
          "A P P B A R",
        ),
      ),
      body: const Center(
        child: Text("Simple App bar"),
      ),
    );
  }
}

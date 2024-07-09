import 'package:flutter/material.dart';

class LargeAppBar extends StatelessWidget {
  const LargeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
            ),
            title: Text(
              "LARGE APP BAR",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications),
              ),
            ],
          ),

          // rest ui here
          SliverList.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  height: 100,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                  ),
                );
              })
        ],
      ),
    );
  }
}

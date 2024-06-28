import 'package:flutter/material.dart';

class WhatsappAppBar extends StatefulWidget {
  const WhatsappAppBar({super.key});

  @override
  State<WhatsappAppBar> createState() => _WhatsappAppBarState();
}

class _WhatsappAppBarState extends State<WhatsappAppBar>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(
        title: Text(
          "WhatsApp",
        ),
        centerTitle: false,
        bottom: TabBar(
            labelStyle: Theme.of(context).textTheme.bodyMedium,
            unselectedLabelStyle: Theme.of(context).textTheme.labelMedium,
            controller: tabController,
            tabs: const [
              Tab(
                text: "Chats",
              ),
              Tab(
                text: "Status",
              ),
              Tab(
                text: "Calls",
              ),
            ]),
      ),
      body: TabBarView(controller: tabController, children: [
        ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
            return const ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text("Flutter hero"),
              subtitle: Text(
                "I want to talk with you",
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
            );
          },
        ),
        ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
            return const ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.play_arrow),
              ),
              title: Text("Flutter hero"),
              subtitle: Text(
                "29 minutes ago",
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
            );
          },
        ),
        ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
            return const ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text("Flutter hero"),
              subtitle: Text(
                "29 minutes ago",
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
              trailing: Icon(Icons.call),
            );
          },
        )
      ]),
    );
  }
}

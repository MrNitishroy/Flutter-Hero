String simpleAppBar = '''import 'package:flutter/material.dart';

class SimpleAppBar extends StatelessWidget {
  const SimpleAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
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
''';

String tabAppBar = '''

class TabAppBar extends StatefulWidget {
  const TabAppBar({super.key});

  @override
  State<TabAppBar> createState() => _TabAppBarState();
}

class _TabAppBarState extends State<TabAppBar> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this);
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        appBar: AppBar(
          title: Text("TAB APP BAR"),
          centerTitle: true,
          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey[400],
            indicatorColor: Theme.of(context).colorScheme.primaryContainer,
            dividerColor: Theme.of(context).colorScheme.background,
            controller: tabController,
            tabs: const [
              Tab(
                icon: Icon(Icons.home),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.person),
                text: "About",
              ),
              Tab(
                icon: Icon(Icons.email),
                text: "Contact",
              ),
              Tab(
                icon: Icon(Icons.more),
                text: "More",
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: tabController,
          children: [
            DemoHomePage(),
            DemoAboutPage(),
            DemoContactPage(),
            DemoHomePage(),
          ],
        ));
  }
}
''';

String whatsappAppbar = '''
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
        title: Text("WhatsApp"),
        centerTitle: false,
        bottom: TabBar(
            labelStyle: Theme.of(context).textTheme.bodyMedium,
            unselectedLabelStyle: Theme.of(context).textTheme.labelMedium,
            controller: tabController,
            tabs: const [
              Tab(text: "Chats"),
              Tab(text: "Status"),
              Tab(text: "Calls"),
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

''';

import 'package:flutter/material.dart';
import 'package:flutterhero/Demo/DemoAboutPage.dart';

import '../../Demo/DemoContactPage.dart';
import '../../Demo/DemoHomePage.dart';

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

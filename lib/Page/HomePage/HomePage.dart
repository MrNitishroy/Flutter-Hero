import 'package:flutter/material.dart';
import 'package:flutterhero/Widgets/AppBar.dart';
import 'package:flutterhero/Widgets/ResponsiveLayout.dart';
import 'package:provider/provider.dart';

import '../../Provider/drawerProvider.dart';
import '../../Widgets/MyDrawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final drawerProvider = Provider.of<DrawerProvider>(context, listen: false);
    final isDesktop = Responsive.isDesktop(context);
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            if (isDesktop)
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: MyDrawer(),
              )),
            Expanded(
              flex: 6,
              child: Column(
                children: [
                  // MyAppBar(),
                  SizedBox(height: 20),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Consumer<DrawerProvider>(
                          builder: (context, value, child) =>
                              value.pages[value.selectedPageIndex],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

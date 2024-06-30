import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterhero/Widgets/ResponsiveLayout.dart';
import 'package:provider/provider.dart';

import '../../Config/AssetsPath.dart';
import '../../Config/PageList.dart';
import '../../Provider/drawerProvider.dart';
import '../../Widgets/MyDrawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      appBar: isDesktop
          ? null
          : AppBar(
              backgroundColor: Theme.of(context).colorScheme.primaryContainer,
              leading: Padding(
                padding: const EdgeInsets.all(13),
                child: InkWell(
                  onTap: () {
                    // Scaffold.of(context).openDrawer();
                    _scaffoldKey.currentState?.openDrawer();
                  },
                  child: SvgPicture.asset(
                    IconsAssets.drawer,
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                    width: 15,
                  ),
                ),
              ),
              title: Image.asset(
                PhotosAssets.darkAppIcon,
                width: 150,
              ),
              centerTitle: true,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    size: 20,
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications,
                    size: 20,
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                ),
                SizedBox(width: 10),
              ],
            ),
      drawer: MyDrawer(),
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
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Consumer<DrawerProvider>(
                    builder: (context, value, child) =>
                        pages[value.selectedPageIndex],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

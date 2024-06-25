import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterhero/Provider/drawerProvider.dart';
import 'package:flutterhero/Widgets/DrawerMenu.dart';
import 'package:flutterhero/Widgets/MyIconButton.dart';
import 'package:provider/provider.dart';

import '../Config/AssetsPath.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final drawerProvider = Provider.of<DrawerProvider>(context, listen: false);
    return Consumer<DrawerProvider>(builder: (context, value, child) {
      return Drawer(
        width: 200,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                    child: Column(
                  children: [
                    SizedBox(height: 20),
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                        // color: Theme.of(context).colorScheme.surface,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(PhotosAssets.darkAppIcon),
                    ),
                    //! Search Box
                    SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "Search. . .",
                        prefixIcon: Icon(
                          Icons.search,
                          size: 20,
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer,
                        ),
                      ),
                    ),

                    // ! menu start from here
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          "BASIC",
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    MyDrawerMenu(
                      title: "Home",
                      icon: IconsAssets.home,
                      onPress: () {
                        drawerProvider.seletedMenu(0);
                      },
                      isSeleted: drawerProvider.selectedPageIndex == 0,
                    ),
                    MyDrawerMenu(
                      title: "Buttons",
                      icon: IconsAssets.addIcon,
                      onPress: () {
                        drawerProvider.seletedMenu(1);
                      },
                      isSeleted: drawerProvider.selectedPageIndex == 1,
                    ),
                    MyDrawerMenu(
                      title: "App Bar",
                      icon: IconsAssets.reward,
                      onPress: () {
                        drawerProvider.seletedMenu(2);
                      },
                      isSeleted: drawerProvider.selectedPageIndex == 2,
                    ),
                  ],
                )),
              ),
              Container(
                padding: EdgeInsets.all(5),
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).colorScheme.surface,
                ),
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        // color: Theme.of(context).colorScheme.secondaryContainer,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                IconsAssets.sun,
                                width: 15,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimaryContainer,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "LIGHT",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
                    Expanded(
                        child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Theme.of(context).colorScheme.secondaryContainer,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                IconsAssets.moon,
                                width: 15,
                                color: Theme.of(context).colorScheme.onSurface,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "DARK",
                                style: TextStyle(
                                  fontSize: 12,
                                  color:
                                      Theme.of(context).colorScheme.onSurface,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_masonry_view/flutter_masonry_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterhero/ComponentsList/BottomNavigation/BottomNavigation.dart';
import 'package:flutterhero/Config/AssetsPath.dart';
import 'package:flutterhero/Widgets/PageAppBar.dart';
import 'package:flutterhero/Widgets/ResponsiveLayout.dart';

import '../../ComponentsList/AppBar/AppBarList.dart';

class BottomNavigationPage extends StatelessWidget {
  const BottomNavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    var contributerList = [
      "https://avatars.githubusercontent.com/u/148624421?v=4",
      "https://avatars.githubusercontent.com/u/79355266?v=4&size=64",
      "https://avatars.githubusercontent.com/u/28752850?s=48&v=4",
    ];
    return Column(
      children: [
        PageAppBar(
          pageName: "Bottom Navigation",
          contributerNumber: "10",
          contributerImages: contributerList,
          icon: IconsAssets.bottomNav,
        ),
        const SizedBox(height: 20),
        MasonryView(
          listOfItem: bottomNavigation,
          itemBuilder: (item) => item,
          numberOfColumn: isDesktop ? 2 : 1,
          itemPadding: 4,
          itemRadius: 10,
        ),
      ],
    );
  }
}

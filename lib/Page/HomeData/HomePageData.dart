import 'package:flutter/material.dart';
import 'package:flutter_masonry_view/flutter_masonry_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterhero/Config/AssetsPath.dart';
import 'package:flutterhero/Page/HomeData/Widgets/ComponentsCard.dart';
import 'package:flutterhero/Page/HomeData/Widgets/HomeInfo.dart';
import 'package:lottie/lottie.dart';

import '../../Widgets/ResponsiveLayout.dart';

class HomePageData extends StatelessWidget {
  const HomePageData({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> list = [
      ComponentsCard(
        coverImage: ComponentsAssets.buttons,
        title: "Buttons",
        description:
            "Elevated Button, Outline Button, Icon Buttons, RichTextButtonS",
      ),
      ComponentsCard(
        coverImage: ComponentsAssets.appBar,
        title: "App Bar",
        description:
            "Elevated Button, Outline Button, Icon Buttons, RichTextButtonS",
      ),
      ComponentsCard(
        coverImage: ComponentsAssets.bottomNav,
        title: "Bottom Nav",
        description:
            "Elevated Button, Outline Button, Icon Buttons, RichTextButtonS",
      ),
      ComponentsCard(
        coverImage: ComponentsAssets.progressIndicator,
        title: "Progress Indictor",
        description:
            "Elevated Button, Outline Button, Icon Buttons, RichTextButtonS",
      ),
    ];
    final isDesktop = Responsive.isDesktop(context);
    final isMobile = Responsive.isMobile(context);
    return Column(
      children: [
        HomeInfo(),
        SizedBox(height: 20),
        MasonryView(
          listOfItem: list,
          itemBuilder: (item) => item,
          numberOfColumn: isMobile
              ? 2
              : isDesktop
                  ? 4
                  : 3,
          itemPadding: 10,
          itemRadius: 10,
        ),
      ],
    );
  }
}

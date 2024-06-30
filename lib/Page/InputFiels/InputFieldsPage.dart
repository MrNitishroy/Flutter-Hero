import 'package:flutter/material.dart';
import 'package:flutter_masonry_view/flutter_masonry_view.dart';
import 'package:flutterhero/ComponentsList/BottomNavigation/BottomNavigation.dart';
import 'package:flutterhero/ComponentsList/InputField/InputField.dart';

import '../../Config/AssetsPath.dart';
import '../../Widgets/PageAppBar.dart';
import '../../Widgets/ResponsiveLayout.dart';

class InputFieldPage extends StatelessWidget {
  const InputFieldPage({super.key});

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
          pageName: "Input Field",
          contributerNumber: "10",
          contributerImages: contributerList,
          icon: IconsAssets.textfield,
        ),
        const SizedBox(height: 20),
        MasonryView(
          listOfItem: inputFiledsArea,
          itemBuilder: (item) => item,
          numberOfColumn: isDesktop ? 2 : 1,
          itemPadding: 4,
          itemRadius: 0,
        ),
      ],
    );
  }
}

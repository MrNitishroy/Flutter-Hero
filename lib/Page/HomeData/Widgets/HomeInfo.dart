import 'package:flutter/material.dart';
import 'package:flutterhero/Config/AssetsPath.dart';
import 'package:lottie/lottie.dart';

import '../../../Widgets/ResponsiveLayout.dart';

class HomeInfo extends StatelessWidget {
  const HomeInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);
    return isMobile
        ? Column(
            children: [
              Container(
                padding: EdgeInsets.all(40),
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).colorScheme.primaryContainer,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(PhotosAssets.darkAppIcon),
                    SizedBox(height: 50),
                    Text(
                      "Components are interactive building blocks for creating a user interface. They can be organized into categories based on their purpose: Action, containment, communication, navigation, selection, and text input.",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onPrimaryContainer),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).colorScheme.primaryContainer,
                ),
                child: Row(
                  children: [
                    Lottie.asset("assets/animation/homeAnimation.json"),
                  ],
                ),
              ),
            ],
          )
        : Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(40),
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Theme.of(context).colorScheme.primaryContainer,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(PhotosAssets.darkAppIcon),
                      SizedBox(height: 50),
                      Text(
                        "Components are interactive building blocks for creating a user interface. They can be organized into categories based on their purpose: Action, containment, communication, navigation, selection, and text input.",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimaryContainer),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: Container(
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Theme.of(context).colorScheme.primaryContainer,
                  ),
                  child: Lottie.asset("assets/animation/homeAnimation.json"),
                ),
              ),
            ],
          );
  }
}

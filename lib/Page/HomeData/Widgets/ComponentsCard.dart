import 'package:flutter/material.dart';
import 'package:flutterhero/Widgets/HoverEffect.dart';

class ComponentsCard extends StatelessWidget {
  final String coverImage;
  final String title;
  final String description;
  const ComponentsCard(
      {super.key,
      required this.coverImage,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return HoverEffect(
      builder: (isHover) => AnimatedContainer(
        duration: Duration(milliseconds: 300),
        color: isHover
            ? Theme.of(context).colorScheme.secondaryContainer
            : Theme.of(context).colorScheme.primaryContainer,
        height: 300,
        child: Column(
          children: [
            // Wrap the image with a Transform.scale widget
            Transform.scale(
              scale: isHover ? 1.1 : 1.0, // Adjust the scaling factor as needed
              child: Image.asset(coverImage),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        title,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ],
                  ),
                  Text(
                    description,
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterhero/Config/AssetsPath.dart';

class PageAppBar extends StatelessWidget {
  final String pageName;
  final String icon;
  final String contributerNumber;
  final List<String> contributerImages;
  const PageAppBar({
    super.key,
    required this.pageName,
    required this.contributerNumber,
    required this.contributerImages,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                icon,
                color: Theme.of(context).colorScheme.onSurface,
              ),
              SizedBox(width: 10),
              Text(pageName)
            ],
          ),
          Row(
            children: [
              Row(
                children: contributerImages
                    .map(
                      (e) => Align(
                        widthFactor: 0.5,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundImage: NetworkImage(e),
                        ),
                      ),
                    )
                    .toList(),
              ),
              SizedBox(width: 10),
              Text(
                "${contributerNumber}+",
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ],
          )
        ],
      ),
    );
  }
}

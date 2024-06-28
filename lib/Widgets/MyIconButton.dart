
import 'package:flutter/material.dart';
import 'package:flutterhero/Widgets/HoverEffect.dart';

class MyIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final Color color;
  const MyIconButton(
      {super.key,
      required this.icon,
      required this.onTap,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
          hoverColor: Colors.transparent,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                focusColor: Colors.transparent,
        onTap: onTap,
        child: HoverEffect(
          builder: (isHover) => AnimatedContainer(
            duration: Duration(milliseconds: 400),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: isHover ? color : color.withOpacity(0.2),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Icon(
                icon,
                color: isHover ? Colors.white : color,
              ),
            ),
          ),
        ));
  }
}

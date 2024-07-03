import 'package:flutter/material.dart';
import 'package:flutterhero/Code/Buttons/ButtonsCodes.dart';
import 'package:flutterhero/ViewComponents/Bottons/BottonsPage.dart';

import '../../Widgets/WidgetsArea.dart';

var buttonsList = [
  WidgetArea(
    code1Title: "Elevated Button",
    code1: elevatedButtonCode,
    code2Title: "Elevated Icon Button",
    code2: elevatedIconButtonCode,
    code3Title: "Icon Button ",
    code3: iconButtonCode,
    isBorder: true,
    view: const SizedBox(
      height: 200,
      width: 300,
      child: MaterialButtons(),
    ),
  ),
];

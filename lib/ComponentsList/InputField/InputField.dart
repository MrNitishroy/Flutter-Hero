import 'package:flutter/material.dart';
import 'package:flutterhero/Code/InputField/InputField.dart';
import 'package:flutterhero/ViewComponents/InputFields/InputWithIcons.dart';
import 'package:flutterhero/ViewComponents/InputFields/LableTextField.dart';
import 'package:flutterhero/ViewComponents/InputFields/MobileNumberInput.dart';
import 'package:flutterhero/ViewComponents/InputFields/OnlyAlfaBetEnter.dart';
import 'package:flutterhero/ViewComponents/InputFields/OnlyAlfaNumericField.dart';
import '../../ViewComponents/InputFields/InputFields.dart';
import '../../Widgets/WidgetsArea.dart';

var inputFiledsArea = [
  WidgetArea(
    code1Title: "Simple Input Field",
    code1: inputField1,
    isBorder: true,
    view: const SizedBox(
      width: 400,
      height: 100,
      child: SimpleInputField(),
    ),
  ),
  WidgetArea(
    code1Title: "Input Field With Icon",
    code1: codeInputWIthIcon,
    isBorder: true,
    view: const SizedBox(
      width: 400,
      height: 100,
      child: InputWithIcon(),
    ),
  ),
  WidgetArea(
    code1Title: "Number Field",
    code1: codeNumberInput,
    isBorder: true,
    view: const SizedBox(
      width: 400,
      height: 100,
      child: NumberInput(),
    ),
  ),
  WidgetArea(
    code1Title: "Alphabets Field",
    code1: codeAlphabetOnlyInput,
    isBorder: true,
    view: const SizedBox(
      width: 400,
      height: 100,
      child: OnlyAlphabetsField(),
    ),
  ),
  WidgetArea(
    code1Title: "AlphaNumeric Field",
    code1: codeAlphaNumericInput,
    isBorder: true,
    view: const SizedBox(
      width: 400,
      height: 100,
      child: OnlyAlphaNumericField(),
    ),
  ),
  WidgetArea(
    code1Title: "Lable Input Field",
    code1: lableInputCode,
    isBorder: true,
    view: const SizedBox(
      width: 400,
      height: 100,
      child: LableTextField(),
    ),
  ),
];

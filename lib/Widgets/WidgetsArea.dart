import 'package:code_text_field/code_text_field.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterhero/Config/AssetsPath.dart';
import 'package:highlight/languages/dart.dart';

class WidgetArea extends StatelessWidget {
  final String? code1Title;
  final String? code2Title;
  final String? code3Title;
  final String code1;
  final String? code2;
  final String? code3;
  final Widget view;
  final bool isBorder;
  const WidgetArea({
    super.key,
    required this.code1,
    this.code2 = "",
    this.code3 = "",
    required this.view,
    this.isBorder = false,
    this.code1Title,
    this.code2Title,
    this.code3Title,
  });

  @override
  Widget build(BuildContext context) {
    CodeController code1Controller =
        CodeController(text: code1, language: dart);
    CodeController code2Controller =
        CodeController(text: code2, language: dart);
    CodeController code3Controller =
        CodeController(text: code3, language: dart);
    ValueNotifier<bool> isExpanded = ValueNotifier<bool>(false);
    return Container(
      child: Column(
        children: [
          SizedBox(height: 20),
          view,
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                hoverColor: Colors.transparent,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                focusColor: Colors.transparent,
                onTap: () {
                  isExpanded.value = !isExpanded.value;
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        IconsAssets.code,
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                      const SizedBox(width: 5),
                      ValueListenableBuilder(
                        valueListenable: isExpanded,
                        builder: (context, value, child) => Text(
                          isExpanded.value ? "Hide Codes" : "Get Codes",
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.onSurface,
                              ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          ValueListenableBuilder(
            valueListenable: isExpanded,
            builder: (context, value, child) {
              return isExpanded.value
                  ? Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 15),
                              decoration: BoxDecoration(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .secondaryContainer,
                                  borderRadius: BorderRadius.circular(100)),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    IconsAssets.calender,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimaryContainer,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    code1Title.toString(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSurface,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Container(
                          child: Stack(
                            children: [
                              CodeField(
                                readOnly: true,
                                lineNumberBuilder: (number, p1) {
                                  return TextSpan(
                                      text: number.toString(),
                                      style: const TextStyle(
                                        fontSize: 10,
                                      ));
                                },
                                lineNumberStyle: LineNumberStyle(width: 50),
                                textSelectionTheme: TextSelectionThemeData(
                                  selectionColor: Theme.of(context)
                                      .colorScheme
                                      .primary
                                      .withOpacity(0.5),
                                ),
                                lineNumbers: true,
                                background: Theme.of(context)
                                    .colorScheme
                                    .primaryContainer,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                controller: code1Controller,
                                enabled: true,
                              ),
                              Positioned(
                                top: 4,
                                right: 4,
                                child: InkWell(
                                  hoverColor: Colors.transparent,
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  onTap: () {
                                    Clipboard.setData(
                                        ClipboardData(text: code1));
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondaryContainer,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          IconsAssets.copy2Icon,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimaryContainer,
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          "Copy",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall
                                              ?.copyWith(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onSurface,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        code2 != ""
                            ? Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5, horizontal: 15),
                                        decoration: BoxDecoration(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondaryContainer,
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(
                                              IconsAssets.calender,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onPrimaryContainer,
                                            ),
                                            const SizedBox(width: 5),
                                            Text(
                                              code2Title.toString(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall
                                                  ?.copyWith(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .onSurface,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Container(
                                    child: Stack(
                                      children: [
                                        CodeField(
                                          readOnly: true,
                                          lineNumberBuilder: (number, p1) {
                                            return TextSpan(
                                                text: number.toString(),
                                                style: const TextStyle(
                                                  fontSize: 10,
                                                ));
                                          },
                                          lineNumberStyle:
                                              LineNumberStyle(width: 50),
                                          textSelectionTheme:
                                              TextSelectionThemeData(
                                            selectionColor: Theme.of(context)
                                                .colorScheme
                                                .primary
                                                .withOpacity(0.5),
                                          ),
                                          lineNumbers: true,
                                          background: Theme.of(context)
                                              .colorScheme
                                              .primaryContainer,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          controller: code2Controller,
                                          enabled: true,
                                        ),
                                        Positioned(
                                          top: 4,
                                          right: 4,
                                          child: InkWell(
                                            hoverColor: Colors.transparent,
                                            splashColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            onTap: () {
                                              Clipboard.setData(
                                                  ClipboardData(text: code2!));
                                            },
                                            child: Container(
                                              padding: const EdgeInsets.all(8),
                                              decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .secondaryContainer,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Row(
                                                children: [
                                                  SvgPicture.asset(
                                                    IconsAssets.copy2Icon,
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .onPrimaryContainer,
                                                  ),
                                                  SizedBox(width: 10),
                                                  Text(
                                                    "Copy",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodySmall
                                                        ?.copyWith(
                                                          color:
                                                              Theme.of(context)
                                                                  .colorScheme
                                                                  .onSurface,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            : const SizedBox(
                                height: 0,
                              ),
                        code3 != ""
                            ? Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5, horizontal: 15),
                                        decoration: BoxDecoration(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondaryContainer,
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(
                                              IconsAssets.calender,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onPrimaryContainer,
                                            ),
                                            const SizedBox(width: 5),
                                            Text(
                                              code3Title.toString(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall
                                                  ?.copyWith(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .onSurface,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Container(
                                    child: Stack(
                                      children: [
                                        CodeField(
                                          readOnly: true,
                                          lineNumberBuilder: (number, p1) {
                                            return TextSpan(
                                                text: number.toString(),
                                                style: const TextStyle(
                                                  fontSize: 10,
                                                ));
                                          },
                                          lineNumberStyle:
                                              LineNumberStyle(width: 50),
                                          textSelectionTheme:
                                              TextSelectionThemeData(
                                            selectionColor: Theme.of(context)
                                                .colorScheme
                                                .primary
                                                .withOpacity(0.5),
                                          ),
                                          lineNumbers: true,
                                          background: Theme.of(context)
                                              .colorScheme
                                              .primaryContainer,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          controller: code3Controller,
                                          enabled: true,
                                        ),
                                        Positioned(
                                          top: 4,
                                          right: 4,
                                          child: InkWell(
                                            hoverColor: Colors.transparent,
                                            splashColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            onTap: () {
                                              Clipboard.setData(
                                                  ClipboardData(text: code3!));
                                            },
                                            child: Container(
                                              padding: const EdgeInsets.all(8),
                                              decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .secondaryContainer,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Row(
                                                children: [
                                                  SvgPicture.asset(
                                                    IconsAssets.copy2Icon,
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .onPrimaryContainer,
                                                  ),
                                                  SizedBox(width: 10),
                                                  Text(
                                                    "Copy",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodySmall
                                                        ?.copyWith(
                                                          color:
                                                              Theme.of(context)
                                                                  .colorScheme
                                                                  .onSurface,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            : const SizedBox(
                                height: 0,
                              ),
                      ],
                    )
                  : const SizedBox(
                      height: 5,
                    );
            },
          ),
          SizedBox(height: 20),
          Container(
            height: 2,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
            child: Row(
              children: [],
            ),
          )
        ],
      ),
    );
  }
}

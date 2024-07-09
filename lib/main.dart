import 'package:flutter/material.dart';
import 'package:flutterhero/Config/PageRoutes.dart';
import 'package:flutterhero/Config/Themes.dart';
import 'package:flutterhero/Provider/ThemeProvider.dart';
import 'package:flutterhero/Provider/drawerProvider.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DrawerProvider()),
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, value, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Hero',
          theme: lightTheme,
          themeMode: value.themeMode,
          darkTheme: darkTheme,
          routerConfig: router,
        );
      },
    );
  }
}

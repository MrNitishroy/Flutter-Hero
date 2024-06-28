import 'package:flutter/material.dart';
import 'package:flutterhero/Demo/DemoAboutPage.dart';
import 'package:flutterhero/Demo/DemoContactPage.dart';
import 'package:flutterhero/Demo/DemoHomePage.dart';
import 'package:get/get.dart';

class SimpleBottomNavigationBar extends StatelessWidget {
  const SimpleBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    var pages = [
      DemoHomePage(),
      DemoAboutPage(),
      DemoContactPage(),
      DemoHomePage(),
    ];
    Rx<int> selectedIndex = 0.obs;
    return Scaffold(
   
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          elevation: 0,
          unselectedItemColor: Theme.of(context).colorScheme.onPrimaryContainer,
          selectedItemColor: Theme.of(context).colorScheme.onSurface,
          currentIndex: selectedIndex.value,
          onTap: (index) {
            selectedIndex.value = index;
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "About"),
            BottomNavigationBarItem(icon: Icon(Icons.email), label: "Contact"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          ],
        ),
      ),
      body: Obx(
        () => pages[selectedIndex.value],
      ),
    );
  }
}

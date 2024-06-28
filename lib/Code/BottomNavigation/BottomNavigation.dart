var simpleBottomNavigationCode = ''''
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
          selectedItemColor: Theme.of(context).colorScheme.onBackground,
          unselectedItemColor:
              Theme.of(context).colorScheme.onSecondaryContainer,
          backgroundColor: Colors.white,
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
''';

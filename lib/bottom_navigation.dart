import 'package:flutter/material.dart';

class TabModel {
  const TabModel(this.path, this.title, this.icon, this.globalKey);
  final String path;
  final String title;
  final IconData icon;
  final GlobalKey<NavigatorState> globalKey;
}

const int startTab = 0;
Map<int, TabModel> navigationTabs = {
  0: TabModel('/hometab', 'Home', Icons.home, GlobalKey<NavigatorState>()),
  1: TabModel('/notificationtab', 'Notification', Icons.notifications, GlobalKey<NavigatorState>()),
};

class BottomNavigation extends StatelessWidget {
  BottomNavigation({this.currentTab, this.onSelectTab});
  final int currentTab;
  final ValueChanged<int> onSelectTab;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentTab,
      type: BottomNavigationBarType.fixed,
      unselectedFontSize: 11,
      selectedFontSize: 11,
      items: navigationTabs.keys.toList().map((int tabItem) {
        return _buildItem(tabItem: tabItem);
      }).toList(),
      onTap: (index) => onSelectTab(
        index,
      ),
    );
  }

  BottomNavigationBarItem _buildItem({int tabItem}) {
    TabModel tabModel = navigationTabs[tabItem];

    return BottomNavigationBarItem(
      icon: Icon(
        tabModel.icon,
      ),
      title: Text(
        tabModel.title
      ),
    );
  }
}

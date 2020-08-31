import 'package:flutter/material.dart';
import 'bottom_navigation.dart';
import 'tab_navigator.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AppState();
}

class AppState extends State<App> {
  int _currentTab = startTab;
 
  void _selectTab(int tabItem) {
    if (tabItem == _currentTab) {
      navigationTabs[tabItem].globalKey.currentState.popUntil((route) => route.isFirst);
    } else {
      setState(() => _currentTab = tabItem);
    }
  }

 @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final isFirstRouteInCurrentTab =
            !await navigationTabs[_currentTab].globalKey.currentState.maybePop();
        if (isFirstRouteInCurrentTab) {
          if (_currentTab != startTab) {
            _selectTab(0);
            return false;
          }
        }
        return isFirstRouteInCurrentTab;
      },
      child: Scaffold(
        body: Stack(children:  navigationTabs.keys.toList().map((int tabItem) {
        return _buildOffstageNavigator(tabItem);
      }).toList(),),
        bottomNavigationBar: BottomNavigation(
          currentTab: _currentTab,
          onSelectTab: _selectTab,
        ),
      ),
    );
  }

   Widget _buildOffstageNavigator(int tabItem) {
    return Offstage(
      offstage: _currentTab != tabItem,
      child: TabNavigator(
        navigatorKey: navigationTabs[tabItem].globalKey,
        tabItem: tabItem,
      ),
    );
  }
}
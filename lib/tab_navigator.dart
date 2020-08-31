import 'package:flutter/material.dart';
import 'package:navigator_test/route_generator.dart';

import 'bottom_navigation.dart';


class TabNavigator extends StatelessWidget {
  TabNavigator({this.navigatorKey, this.tabItem});
  final GlobalKey<NavigatorState> navigatorKey;
  final int tabItem;



  @override
  Widget build(BuildContext context) {
  

    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (routeSettings) {
        print("tab : $tabItem");
        print("name : ${routeSettings.name}");
        print("path : ${navigationTabs[tabItem].path}");

        var settings  = RouteSettings(name: routeSettings.name != "/" ? routeSettings.name : navigationTabs[tabItem].path  ,arguments: routeSettings.arguments );
        return RouteGenerator.generateRoute(settings);
      },
    );
  }
}

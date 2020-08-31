import 'package:flutter/material.dart';
import 'package:navigator_test/page_one.dart';
import 'package:navigator_test/page_three.dart';
import 'package:navigator_test/page_two.dart';

import 'page_four.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/hometab':
          return MaterialPageRoute(builder: (_) => PageOne());
      case '/notificationtab':
        return MaterialPageRoute(builder: (_) => PageThree());
      case '/one':
        return MaterialPageRoute(builder: (_) => PageOne());
      case '/two':
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => PageTwo(
              data: args,
            ),
          );
        }
        return _errorRoute();
      case '/three':
        return MaterialPageRoute(
          builder: (_) => PageThree(),
        );
      case '/four':
        if (args is PageFourArgs) {
          return MaterialPageRoute(
            builder: (_) => PageFour(
              args: args,
            ),
          );
        }
        return _errorRoute();
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('Sayfa Bulunamadı'),
        ),
      );
    });
  }
}

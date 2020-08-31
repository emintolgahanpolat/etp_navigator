import 'package:flutter/material.dart';

import 'app.dart';
import 'route_generator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: dark,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: App(),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}


const MaterialColor dark = MaterialColor(
    _limePrimaryValue,
    <int, Color>{
       50: Color(0xFF000000),
      100: Color(0xFF000000),
      200: Color(0xFF000000),
      300: Color(0xFF000000),
      400: Color(0xFF000000),
      500: Color(_limePrimaryValue),
      600: Color(0xFF000000),
      700: Color(0xFF000000),
      800: Color(0xFF000000),
      900: Color(0xFF000000),
    },
  );
  const int _limePrimaryValue = 0xFF000000;
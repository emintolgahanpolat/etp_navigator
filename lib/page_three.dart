import 'package:flutter/material.dart';

import 'widget_router.dart';

class PageThree extends StatefulWidget {
  PageThree({Key key}) : super(key: key);

  @override
  _PageThreeState createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  int _counter = 0;

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Page Three"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
              RouterWidget()
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:navigator_test/widget_router.dart';

class PageTwo extends StatefulWidget {
  PageTwo({Key key, this.data}) : super(key: key);
  final String data;
  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Two"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '${widget.data}',
              style: Theme.of(context).textTheme.headline4,
            ),
            RouterWidget()
          ],
        ),
      ),
    );
  }
}

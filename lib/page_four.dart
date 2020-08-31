import 'package:flutter/material.dart';
import 'package:navigator_test/widget_router.dart';


class PageFourArgs{
  final String param1;
  final int param2;
  PageFourArgs(this.param1,this.param2);
}
class PageFour extends StatefulWidget {
  PageFour({Key key, this.args}) : super(key: key);
  final PageFourArgs args;
  @override
  _PageFourState createState() => _PageFourState();
}

class _PageFourState extends State<PageFour> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Four"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Param 1 ${widget.args.param1}',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'Param 2 ${widget.args.param2 ?? "null value"}',
              style: Theme.of(context).textTheme.headline4,
            ),
            RouterWidget()
          ],
        ),
      ),
    );
  }
}

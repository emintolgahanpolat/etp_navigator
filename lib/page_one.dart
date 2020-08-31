import 'package:flutter/material.dart';
import 'package:navigator_test/widget_router.dart';

class PageOne extends StatefulWidget {
  PageOne({Key key}) : super(key: key);

  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  int _counter = 0;
  @override
  void initState() {
    print("init");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Page One"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/")
                      .then((value) => setState(() {
                            _counter++;
                            print("artır");
                          }));
                },
                child: Text(
                  "Page 1 (pushNamed) .then()\nÖnceki sayfaya gelince yapıacak işlem",
                  textAlign: TextAlign.center,
                ),
              ),
              RouterWidget()
            ],
          ),
        ));
  }
}

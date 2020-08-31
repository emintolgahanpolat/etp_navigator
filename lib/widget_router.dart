import 'package:flutter/material.dart';
import 'package:navigator_test/page_four.dart';
import 'package:navigator_test/page_one.dart';

class RouterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: EdgeInsets.all(12),
        children: [
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/one");
            },
            child: Text("Page 1 (pushNamed)"),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(context, "/one", (route) => false);
            },
            child: Text("Page 1 (pushNamedAndRemoveUntil - false) "),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(context, "/one", (route) => true);
            },
            child: Text("Page 1 (pushNamedAndRemoveUntil - true) "),
          ),
          Divider(
            color: Colors.red,
            thickness: 1,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/two", arguments: "hi");
            },
            child: Text("Page 2 (pushNamed) args: hi"),
          ),
          Divider(
            color: Colors.red,
            thickness: 1,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/three");
            },
            child: Text(
              "Page 3 (pushNamed)",
            ),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.of(context, rootNavigator: true).pushNamed("/three");
            },
            child: Text(
              "Page 3 (rootNavigator)",
            ),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, "/three");
            },
            child: Text("Page 3 (popAndPushNamed)"),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, "/three");
            },
            child: Text("Page 3 (pushReplacementNamed)"),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, "/three", (route) => false);
            },
            child: Text("Page 3 (pushNamedAndRemoveUntil) - false"),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, "/three", (route) => true);
            },
            child: Text("Page 3 (pushNamedAndRemoveUntil) - true"),
          ),
          Divider(
            color: Colors.red,
            thickness: 1,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/four",
                  arguments: PageFourArgs("Merhaba", 123));
            },
            child: Text(
              "Page 4 (pushNamed)\nparam1 = Merhaba param2 = 123",
              textAlign: TextAlign.center,
            ),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/four",
                  arguments: PageFourArgs("Merhaba", null));
            },
            child: Text(
              "Page 4 (pushNamed)\ param1 = Merhaba param2 = null",
              textAlign: TextAlign.center,
            ),
          ),
          Divider(
            color: Colors.red,
            thickness: 1,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("pop"),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.canPop(context);
            },
            child: Text("canPop"),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.maybePop(context);
            },
            child: Text("maybePop"),
          ),
          Divider(
            color: Colors.red,
            thickness: 1,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/bug");
            },
            child: Text("error"),
          ),
        ],
      ),
    );
  }
}

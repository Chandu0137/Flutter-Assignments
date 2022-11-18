import 'package:flutter/material.dart';
import 'package:flutter_assignment_1/textOutput.dart';

class TextControl extends StatefulWidget {
  const TextControl({Key? key}) : super(key: key);

  @override
  State<TextControl> createState() => _TextControlState();
}

class _TextControlState extends State<TextControl> {
  String _mainText = "this is my first assignment";
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(top: 100),
        child: Column(
          children: [
            TextOutput(_mainText),
            RaisedButton(
              onPressed: () {
                setState(() {
                  _mainText = "this changed";
                });
              },
              child: Text("press here"),
            ),
          ],
        ),
      ),
    );
  }
}

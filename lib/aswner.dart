import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Aswer extends StatelessWidget {
  final Function optionHandler;
  final String textOption;

  Aswer(this.optionHandler, this.textOption);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(
          textOption,
          style: TextStyle(fontSize: 20),
        ),
        color: Colors.red,
        onPressed: optionHandler,
      ),
    );
  }
}

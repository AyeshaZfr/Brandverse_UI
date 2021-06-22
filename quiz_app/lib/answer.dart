import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final selectHandler;

  Answer(this.selectHandler);

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.black,
        color: Colors.amber,
        child: Text(
          'Answer 1',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}

class Container {}

mixin Widget {}

class BuildContext {}

class StatelessWidget {}

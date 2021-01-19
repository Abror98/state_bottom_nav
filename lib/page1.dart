import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Center(
          child: Text(
            '$count',
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
        RaisedButton(onPressed: ()
        {
          setState(() {
            count++;
          });
        },
        child: Text('Increment'),
        ),
      ],
    );
  }
}

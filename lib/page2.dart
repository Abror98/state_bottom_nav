import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
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
            count--;
          });
        },
          child: Text('Decrement'),
        ),
      ],
    );
  }
}

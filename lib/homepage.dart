import 'package:flutter/material.dart';
import 'package:state_bottom_nav/page1.dart';
import 'package:state_bottom_nav/page2.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget>pages = [Page1(), Page2()];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Save Page State'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.exposure_minus_1_outlined),
          label: "Increment"),
          BottomNavigationBarItem(
            icon: Icon(Icons.plus_one_outlined),
            label: "Decrement"
          )
        ],
        currentIndex: selectedIndex,
        onTap: changeTap,
      ),
      body: IndexedStack(
        index: selectedIndex,
        children: pages,
      ),
    );
  }

 void changeTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }


}


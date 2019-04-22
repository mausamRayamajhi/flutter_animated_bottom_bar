import 'package:flutter/material.dart';
import 'animated_bottom_bar.dart';

class BottomBarNavigationPatternExample extends StatefulWidget {
  final List<BarItem> barItems = [
    BarItem(
      text: 'Home',
      icon: Icons.home,
      color: Colors.indigo,
    ),
    BarItem(
        text: 'Likes', icon: Icons.favorite_border, color: Colors.pinkAccent),
    BarItem(text: 'Search', icon: Icons.search, color: Colors.yellow.shade900),
    BarItem(text: 'Profile', icon: Icons.person_outline, color: Colors.teal),
  ];
  @override
  _BottomBarNavigationPatternExampleState createState() =>
      _BottomBarNavigationPatternExampleState();
}

class _BottomBarNavigationPatternExampleState
    extends State<BottomBarNavigationPatternExample> {
  int selectedBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        color: widget.barItems[selectedBarIndex].color,
        child: Center(
          child:
              Text("Mausam Rayamajhi", style: TextStyle(color: Colors.white,fontSize: 25.0)),
        ),
      ),
      bottomNavigationBar: AnimatedBottomBar(
          barItems: widget.barItems,
          animationDuration: Duration(milliseconds: 150),
          onBarTap: (int index) {
            setState(() {
              selectedBarIndex = index;
            });
          }),
    );
  }
}

import 'package:algorithm_app/Design/HomeSite.dart';
import 'package:flutter/material.dart';
import 'Algorithms.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _index = 0;
  final List<Widget> _barItems = [
    DifferentAlgorithms(),
    HomeFinal(),
  ];

  void _onTapBar(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _barItems[_index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepPurpleAccent,
        onTap: _onTapBar,
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.school,
            ),
            backgroundColor: Colors.deepPurple,
            label: "Algorithms",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.laptop,
            ),
            label: "Techniques",
            backgroundColor: Colors.deepPurple,
          ),
        ],
      ),
    );
  }
}

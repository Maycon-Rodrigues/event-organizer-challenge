import 'package:event_organizer/src/pages/events_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 2;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static List<Widget> _widgetOptions = <Widget>[
    Container(
      alignment: Alignment.center,
      height: double.infinity,
      child: Text(
        'Index 0: Home',
        style: optionStyle,
      ),
    ),
    Container(
      alignment: Alignment.center,
      height: double.infinity,
      child: Text(
        'Index 1: Business',
        style: optionStyle,
      ),
    ),
    EventsList(),
    Container(
      alignment: Alignment.center,
      height: double.infinity,
      child: Text(
        'Index 3: School',
        style: optionStyle,
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              title: Padding(padding: EdgeInsets.all(0))),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on),
              title: Padding(padding: EdgeInsets.all(0))),
          BottomNavigationBarItem(
              icon: Icon(Icons.star),
              title: Padding(padding: EdgeInsets.all(0))),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Padding(padding: EdgeInsets.all(0)))
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.red, //Colors.amber[800],
        unselectedItemColor: Colors.black,
        elevation: 0,
        selectedFontSize: 0,
      ),
    );
  }
}

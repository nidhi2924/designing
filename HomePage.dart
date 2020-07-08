import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterappdesign/ContsUsed.dart';
import 'calander.dart';
import 'ContsUsed.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Past Bookings',
      style: optionStyle,
    ),
    Text(
      'Index 1: Upcoming',
      style: optionStyle,
    ),
    Text(
      'Index 2: Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return new Scaffold(
        appBar:  AppBar(
          title:  Text(
            'Book My Seat',
            style: TextStyle(color: Colors.white ,fontSize: 23 ),
          ),
          elevation: 0.7,
        ),
        backgroundColor: Colors.white,
        body:

        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Container(
                child:CircleAvatar(
                  child: Text('Innodata', style : kcircularAvatar , textAlign: TextAlign.center),

                  backgroundColor: Colors.indigo,
                  radius: 70,

                ) ,
              ),
            ),
            Expanded(
              child: Container(

                  child : ListView(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(
                          Icons.calendar_today,
                          color: kIconColours,
                          calendar:Calender()
                        ),
                        title: Text('Calender',
                            style: kTiles, textAlign: TextAlign.left),

                      ),
                      ListTile(
                        leading: Icon(
                          Icons.timelapse,
                          color: kIconColours,
                        ),
                        title: Text(
                          'Slot Booking',
                          style: kTiles,
                          textAlign: TextAlign.left,
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.collections_bookmark,
                          color: kIconColours,
                        ),
                        title: Text('Quantity',
                            style: kTiles, textAlign: TextAlign.left),

                      ),
                    ],
                  )

              ),
            ),
          ],
        ),





        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.history, color: kIconColours),
              title: Text(
                'Past Bookings',
                style: kBottombar,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.pan_tool, color: kIconColours),
              title: Text('Upcoming', style: kBottombar),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.pages,
                color: kIconColours,
              ),
              title: Text('Profile', style: kBottombar),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ));
  }
}

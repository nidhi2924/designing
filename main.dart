import 'package:flutter/material.dart';
import 'package:flutterappdesign/HomePage.dart';

import 'HomePage.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme : new ThemeData().copyWith(
          appBarTheme: AppBarTheme(
            color: Colors.indigo,
            textTheme: TextTheme(
                title: TextStyle(
                    color: Colors.white

                )
            ),

          )
      ),
      home: HomePage(),
    );
  }
}

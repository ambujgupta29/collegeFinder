import 'package:collegepedia/Screens/dropdownScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Collegepedia',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF203341),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DropdownScreen(),
    );
  }
}

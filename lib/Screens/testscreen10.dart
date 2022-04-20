import 'package:collegepedia/widgets/college_container.dart';
import 'package:flutter/material.dart';

class TestScreen10 extends StatelessWidget {
  const TestScreen10({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      'University of Auckland',
      'University of Canterbury',
      'Victoria University of Wellington',
      'University of Otago',
      'Auckland University of Technology',
      'Massey University',
      'University of Waikato',
      'Lincoln University',
      'Manukau Institute of Technology',
      'Ara Institute of Canterbury',
    ];
    final List<String> colorCodes = <String>[
      'https://www.auckland.ac.nz/en.html',
      'https://www.canterbury.ac.nz/',
      'https://www.wgtn.ac.nz/',
      'https://www.otago.ac.nz/',
      'https://www.aut.ac.nz/',
      'https://www.massey.ac.nz/',
      'https://www.waikato.ac.nz/',
      'https://www.lincoln.ac.nz/',
      'https://www.manukau.ac.nz/',
      'https://www.ara.ac.nz/',
    ];
    return Scaffold(
      backgroundColor: Color(0xFF0D1137),
      appBar: AppBar(
        backgroundColor: Color(0xFFE52165),
        title: Text(
          "Top 10 Colleges",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return CollegeContainer(
              name: entries[index],
              url: colorCodes[index],
            );
          }),
    );
  }
}

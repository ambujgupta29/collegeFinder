import 'package:collegepedia/widgets/college_container.dart';
import 'package:flutter/material.dart';

class TestScreen12 extends StatelessWidget {
  const TestScreen12({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      'University of Waterloo',
      'University of Toronto',
      'University of British Columbia',
      'University of Alberta',
      'McGill University',
      'Concordia University',
      'University of Montreal',
      'University of Ontario Institute Technology',
      'University of Calgary',
      'Ryerson University',
    ];
    final List<String> colorCodes = <String>[
      'https://uwaterloo.ca/',
      'https://www.utoronto.ca/',
      'https://www.ubc.ca/',
      'https://www.ualberta.ca/index.html',
      'https://www.mcgill.ca/',
      'https://www.concordia.ca/',
      'https://www.umontreal.ca/en/',
      'https://ontariotechu.ca/',
      'https://www.ucalgary.ca/',
      'https://www.ryerson.ca/',
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

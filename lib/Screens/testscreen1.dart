import 'package:collegepedia/widgets/college_container.dart';
import 'package:flutter/material.dart';

class TestScreen1 extends StatelessWidget {
  const TestScreen1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      'University of New South Wales',
      'University of Technology Sydney',
      'University of Adelaide',
      'RMIT University',
      'Monash University',
      'Curtin University',
      'University of Queensland Australia',
      'University of Wollongong',
      'Australian National University',
      'Swinburne University of Technology',
    ];
    final List<String> colorCodes = <String>[
      'https://www.unsw.edu.au/in/study?gclsrc=aw.ds',
      'https://www.uts.edu.au/',
      'https://www.adelaide.edu.au/',
      'https://www.rmit.edu.au/',
      'https://www.monash.edu/',
      'https://www.curtin.edu.au/',
      'https://www.uq.edu.au/',
      'https://www.uow.edu.au/',
      'https://www.anu.edu.au/',
      'https://www.swinburne.edu.au/',
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

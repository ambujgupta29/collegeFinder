import 'package:collegepedia/widgets/college_container.dart';
import 'package:flutter/material.dart';

class TestScreen8 extends StatelessWidget {
  const TestScreen8({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      'Massachusetts Institute of Technology',
      'Stanford University',
      'University of California,Berkeley',
      'University of Illinois Urbana-Champaign',
      'Georgia Institute of Technology',
      'California Institute of Technology',
      'University of Michigan',
      'Purdue University',
      'The University of Texas',
      'Carnegie Mellon University',
    ];
    final List<String> colorCodes = <String>[
      'https://www.mit.edu/',
      'https://www.stanford.edu/',
      'https://www.berkeley.edu/',
      'https://illinois.edu/',
      'https://www.gatech.edu/',
      'https://www.caltech.edu/',
      'https://umich.edu/',
      'https://www.purdue.edu/',
      'https://www.utexas.edu/',
      'https://www.cmu.edu/',
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

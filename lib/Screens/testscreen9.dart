import 'package:collegepedia/widgets/college_container.dart';
import 'package:flutter/material.dart';

class TestScreen9 extends StatelessWidget {
  const TestScreen9({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      'Imperial College London',
      'University of Cambridge',
      'University of Oxford',
      'University of Manchester',
      'University of Nottingham',
      'University College London',
      'Brunel University',
      'University of Southampton',
      'University of Strathclyde',
      'University of Sheffield',
    ];
    final List<String> colorCodes = <String>[
      'https://www.imperial.ac.uk/',
      'https://www.cam.ac.uk/',
      'https://www.ox.ac.uk/',
      'https://www.manchester.ac.uk/',
      'https://www.nottingham.ac.uk/',
      'https://www.ucl.ac.uk/',
      'https://www.brunel.ac.uk/',
      'https://www.southampton.ac.uk/',
      'https://www.strath.ac.uk/',
      'https://www.sheffield.ac.uk/',
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

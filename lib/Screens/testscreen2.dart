import 'package:collegepedia/widgets/college_container.dart';
import 'package:flutter/material.dart';

class TestScreen2 extends StatelessWidget {
  const TestScreen2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      'Technical University of Munich',
      'RWTH Aachen University',
      'Technical University of Berlin',
      'Karlsruhe Institute of Technology',
      'University of Stuttgart',
      'University of Duisburg-Essen',
      'University of Erlangen Nuremberg',
      'Darmstadt University of Technology',
      'University of Hannover',
      'Braunschweig University of Technology',
    ];
    final List<String> colorCodes = <String>[
      'https://www.tum.de/',
      'https://www.rwth-aachen.de/go/id/a/?lidx=1',
      'https://www.tu.berlin/en/',
      'https://www.kit.edu/english/',
      'https://www.uni-stuttgart.de/en/',
      'https://www.uni-due.de/en/',
      'https://www.fau.eu/',
      'https://www.tu-darmstadt.de/index.en.jsp',
      'https://www.uni-hannover.de/en/',
      'https://www.tu-braunschweig.de/en/',
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

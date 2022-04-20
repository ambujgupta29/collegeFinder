import 'package:collegepedia/widgets/college_container.dart';
import 'package:flutter/material.dart';

class TestScreen3 extends StatelessWidget {
  const TestScreen3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      'Sorbonne Universite',
      'Grenoble Institute of Technology',
      'Universite de Lorraine',
      'National Institute for Applied Sciences - Lyon',
      'Université de Lille',
      'University of Montpellier',
      'IMT Atlantique',
      'MINES ParisTech',
      'University Paul Sabatier - Toulouse 3',
      'Institut National Polytechnique de Toulouse',
    ];
    final List<String> colorCodes = <String>[
      'https://www.sorbonne-universite.fr/',
      'https://www.grenoble-inp.fr/en',
      'https://www.univ-lorraine.fr/',
      'https://www.insa-lyon.fr/en/',
      'https://www.univ-lille.fr/',
      'https://www.umontpellier.fr/en/',
      'https://www.imt-atlantique.fr/en',
      'https://mines-paristech.eu/',
      'https://www.univ-tlse3.fr/',
      'https://www.inp-toulouse.fr/en/index.html',
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

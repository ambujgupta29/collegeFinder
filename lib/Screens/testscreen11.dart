import 'package:collegepedia/widgets/college_container.dart';
import 'package:flutter/material.dart';

class TestScreen11 extends StatelessWidget {
  const TestScreen11({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      'National University of Singapore',
      'Nanyang Technology University',
      'SIM University',
      'Singapore University of Technology and Design',
      'National Instituite of Education',
      'Design Technology Institute(DTI)',
      'Singapore Institute of Technology(SIT)',
      'The Logistic Institute-Asia Pacific',
      'Shines College',
      'PSB Academy',
    ];
    final List<String> colorCodes = <String>[
      'https://www.nus.edu.sg/',
      'https://www.ntu.edu.sg/',
      'https://www.sim.edu.sg/Pages/index.aspx',
      'https://www.sutd.edu.sg/',
      'https://nie.edu.sg/',
      'https://www.sutd.edu.sg/',
      'https://www.singaporetech.edu.sg/why-sit?utm_source=google&utm_medium=cpc&utm_campaign=OB-CNV_PF-SRH_RG-APC_CN-0024&utm_term=BRAND+EXACT&utm_content=RSA&gclid=EAIaIQobChMI8tr1vNei9wIVBddMAh2oGAg0EAAYASAAEgKeHvD_BwE',
      'https://www.tliap.nus.edu.sg/',
      'https://www.shine-cambodia.com/',
      'https://www.psb-academy.edu.sg/',
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

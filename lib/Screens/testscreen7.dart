import 'package:collegepedia/widgets/college_container.dart';
import 'package:flutter/material.dart';

class TestScreen7 extends StatelessWidget {
  const TestScreen7({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      'BINUS University',
      'Sepuluh Nopember Institute of Technology',
      'Bandung Institute of Technology',
      'University of Indonesia',
      'Airlangga University',
      'Gadjah Mada University (UGM) ',
      'University of Brawijaya',
      'Bogor Agricultural University',
      'Sebelas Maret University',
      'Syiah Kuala University',
    ];
    final List<String> colorCodes = <String>[
      'https://binus.ac.id/',
      'https://www.its.ac.id/',
      'https://www.itb.ac.id/',
      'https://www.ui.ac.id/',
      'https://www.unair.ac.id/en/',
      'https://www.ugm.ac.id/en',
      'https://ub.ac.id/',
      'https://ipb.ac.id/',
      'https://uns.ac.id/en/',
      'https://unsyiah.ac.id/',
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

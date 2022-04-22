import 'package:collegepedia/Screens/pscreen1.dart';
import 'package:collegepedia/Screens/pscreen2.dart';
import 'package:collegepedia/Screens/pscreen3.dart';
import 'package:collegepedia/Screens/pscreen4.dart';
import 'package:collegepedia/Screens/pscreen5.dart';
import 'package:collegepedia/widgets/college_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Jeescreen extends StatefulWidget {
  const Jeescreen({Key key}) : super(key: key);

  @override
  _JeescreenState createState() => _JeescreenState();
}

class _JeescreenState extends State<Jeescreen> {
  TextEditingController rankController = new TextEditingController();
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
          "Top College Predictor",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text(
                      "Enter JEE Rank:",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 15),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        child: Material(
                          elevation: 4,
                          shadowColor: Color(0xB9000000),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          child: TextField(
                            controller: rankController,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context).primaryColor),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 15.0,
                              ),
                              fillColor: Colors.white,
                              filled: true,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 35.0,
              ),
              GestureDetector(
                onTap: () {
                  print(rankController.text);
                  int rank = int.parse(rankController.text);

                  if (rank < 50) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Pscreen1()),
                    );
                  }
                  if (rank > 50 && rank < 300) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Pscreen2()),
                    );
                  }
                  if (rank > 300 && rank < 2000) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Pscreen3()),
                    );
                  }
                  if (rank > 2000 && rank < 5000) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Pscreen4()),
                    );
                  }
                  if (rank > 5000 && rank < 10000) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Pscreen5()),
                    );
                  }
                  if (rank > 10000) {
                    AlertDialog alert = AlertDialog(
                      backgroundColor: Color(0xFF0D1137),
                      title: Text(
                        "Sorry!",
                        style: TextStyle(
                            color: Color(0xFFE52165),
                            fontWeight: FontWeight.w900,
                            fontSize: 20),
                      ),
                      content: Text(
                        "You are unlikely to get any IIT 🥺.Try Hard next year",
                        style: TextStyle(
                            color: Color(0xFFE52165),
                            fontWeight: FontWeight.w900,
                            fontSize: 20),
                      ),
                    );

                    // show the dialog
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return alert;
                      },
                    );
                  }
                },
                child: Container(
                  width: 160.0,
                  height: 48.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color(0xFFE52165),
                      borderRadius: BorderRadius.circular(100.0),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 2),
                          color: Color(0xB9000000),
                          blurRadius: 4,
                        )
                      ]),
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Ubuntu',
                      fontSize: 24.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

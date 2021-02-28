import 'package:flutter/material.dart';

class ViewImageEnginePage extends StatefulWidget {
  @override
  _ViewImageEnginePageState createState() => _ViewImageEnginePageState();
}

class _ViewImageEnginePageState extends State<ViewImageEnginePage> {
  @override
  void initState() {
    super.initState();
  }

  String clicked = '';

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/truck_11.jpg"),
              fit: BoxFit.fitWidth,
              alignment: Alignment.center,
            ),
          ),
          child: Column(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 3 * screenHeight / 4, 0, 0)),
              Text(
                "EMS Oil Temperature High",
                textAlign: TextAlign.center,
                style: TextStyle(
                    backgroundColor: Colors.red,
                    color: Colors.black,
                    fontSize: 20),
              ),
              Text(
                "D1CWY - P112500",
                textAlign: TextAlign.center,
                style: TextStyle(
                    backgroundColor: Colors.red,
                    color: Colors.black,
                    fontSize: 20),
              ),
              Text(
                "Check Cooling System",
                textAlign: TextAlign.center,
                style: TextStyle(
                    backgroundColor: Colors.red,
                    color: Colors.black,
                    fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

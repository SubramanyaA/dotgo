import 'package:flutter/material.dart';

class ViewImageTyrePage extends StatefulWidget {
  @override
  _ViewImageTyrePageState createState() => _ViewImageTyrePageState();
}

class _ViewImageTyrePageState extends State<ViewImageTyrePage> {
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
              image: AssetImage("assets/images/truck_8.jpg"),
              fit: BoxFit.fitWidth,
              alignment: Alignment.center,
            ),
          ),
          child: Column(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 3 * screenHeight / 4, 0, 0)),
              Text(
                "Wireless Communication with TPM ECU in front not working",
                textAlign: TextAlign.center,
                style: TextStyle(
                    backgroundColor: Colors.red,
                    color: Colors.black,
                    fontSize: 20),
              ),
              Text(
                "D1DIM - U114100",
                textAlign: TextAlign.center,
                style: TextStyle(
                    backgroundColor: Colors.red,
                    color: Colors.black,
                    fontSize: 20),
              ),
              Text(
                "",
                textAlign: TextAlign.center,
                style: TextStyle(
                    backgroundColor: Colors.red,
                    color: Colors.black,
                    fontSize: 20),
              ),
              Text(
                "Replace TPM ECU Immediately!!!",
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

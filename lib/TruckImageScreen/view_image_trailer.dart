import 'package:flutter/material.dart';

class ViewImageTrailerPage extends StatefulWidget {
  @override
  _ViewImageTrailerPageState createState() => _ViewImageTrailerPageState();
}

class _ViewImageTrailerPageState extends State<ViewImageTrailerPage> {
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
              image: AssetImage("assets/images/truck_9.jpg"),
              fit: BoxFit.fitWidth,
              alignment: Alignment.center,
            ),
          ),
          child: Column(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 3 * screenHeight / 4, 0, 0)),
              Text(
                "Trailer Brake Lights Short to Ground",
                textAlign: TextAlign.center,
                style: TextStyle(
                    backgroundColor: Colors.red,
                    color: Colors.black,
                    fontSize: 20),
              ),
              Text(
                "D1AFV - C100411",
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
                "Change the Brake Lights!!!",
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

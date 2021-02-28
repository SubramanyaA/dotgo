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
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/truck_11.jpg"),
              fit: BoxFit.contain,
              alignment: Alignment.center,
            ),
          ),
          child: Stack(
            children: <Widget>[],
          ),
        ),
      ),
    );
  }
}

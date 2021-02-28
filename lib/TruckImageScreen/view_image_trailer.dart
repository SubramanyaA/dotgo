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
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/truck_9.jpg"),
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

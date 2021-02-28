import 'package:dotgo/TruckImageScreen/view_image_engine.dart';
import 'package:dotgo/TruckImageScreen/view_image_trailer.dart';
import 'package:dotgo/TruckImageScreen/view_image_tyre.dart';
import 'package:flutter/material.dart';
import 'package:path_drawing/path_drawing.dart';

class ViewImagePage extends StatefulWidget {
  @override
  _ViewImagePageState createState() => _ViewImagePageState();
}

const svgEnginePath =
    'M59 1L36 22L12 52H1V73V123L59 154H73H79L94 145L103 123H115V102V35L59 1Z';

const svgTrailerPath =
    'M54 281L40 275L37 271L1 236V168L286 1L343 39L352 107L54 281Z';

const svgTyrePath =
    'M359 1L269 51L254 27L143 94M143 94V128L7 206L1 195V178L143 94Z';

class _Clipper extends CustomClipper<Path> {
  _Clipper({this.svgPath, this.offset = Offset.zero});

  String svgPath;
  Offset offset;
  @override
  Path getClip(Size size) {
    var path = parseSvgPathData(svgPath);

    return path.shift(offset);
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}

class _ViewImagePageState extends State<ViewImagePage> {
  @override
  void initState() {
    super.initState();
  }

  String clicked = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new Container(),
        title: Text("Know Your Truck"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/truck_3_copy.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: <Widget>[
              _getClippedImage(
                clipper: _Clipper(
                  svgPath: svgEnginePath,
                  offset: Offset(5, 170),
                ),
                image: 'assets/images/truck_3_copy.jpg',
                onClick: _handleClick('Engine'),
              ),
              _getClippedImage(
                clipper: _Clipper(
                  svgPath: svgTrailerPath,
                  offset: Offset(80, 0),
                ),
                image: 'assets/images/truck_3_copy.jpg',
                onClick: _handleClick('Trailer'),
              ),
              _getClippedImage(
                clipper: _Clipper(
                  svgPath: svgTyrePath,
                  offset: Offset(100, 100),
                ),
                image: 'assets/images/truck_3_copy.jpg',
                onClick: _handleClick('Tyre'),
              ),
              Positioned(
                child: MyBlinkingButton(),
                top: 0,
              )
            ],
          ),
        ),
      ),
    );
  }

  void Function() _handleClick(String clickedImage) {
    var navigate;
    switch (clickedImage) {
      case 'Engine':
        navigate = ViewImageEnginePage();
        break;
      case 'Trailer':
        navigate = ViewImageTrailerPage();
        break;
      case 'Tyre':
        navigate = ViewImageTyrePage();
        break;
      default:
        navigate = ViewImagePage();
        break;
    }

    return () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return navigate;
            },
          ),
        );
  }
}

class MyBlinkingButton extends StatefulWidget {
  @override
  _MyBlinkingButtonState createState() => _MyBlinkingButtonState();
}

class _MyBlinkingButtonState extends State<MyBlinkingButton>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    _animationController =
        new AnimationController(vsync: this, duration: Duration(seconds: 1));
    _animationController.repeat(reverse: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animationController,
      child: MaterialButton(
        onPressed: () => null,
        child: Text(
          "There's a problem in the Engine, Trailer and Tyre. \nClick on them to know more",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
        color: Colors.red,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}

Widget _getClippedImage({
  _Clipper clipper,
  String image,
  void Function() onClick,
}) {
  return ClipPath(
    clipper: clipper,
    child: GestureDetector(
      onTap: onClick,
      child: Image.asset('assets/images/truck_3_copy.jpg'),
    ),
  );
}

import 'package:dotgo/Support/rounded_button.dart';
import 'package:dotgo/TruckImageScreen/view_image.dart';
import 'package:dotgo/WelcomeScreen/welcome_background.dart';
import 'package:flutter/material.dart';

//import 'package:flutter_svg/svg.dart';

class WelcomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return WelcomeBackground(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "DOT-GO",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "\"DIAGNOSTICS ON THE GO\"",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: size.height * 0.05),
            /*SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),*/
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "ENTER",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ViewImagePage();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

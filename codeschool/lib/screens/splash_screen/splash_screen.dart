import 'package:codeschool/constants.dart';
import 'package:codeschool/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static const routeName = "SplashScreen";
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
          context, HomeScreen.routeName, (route) => false);
    });
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            "assets/images/logo.png",
            height: 300,
            width: 300,
          ),
          Text("codeSchool",
              style: GoogleFonts.expletusSans(
                  fontSize: 60,
                  color: kblackTextColor,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w700)),
        ]),
      ),
    );
  }
}

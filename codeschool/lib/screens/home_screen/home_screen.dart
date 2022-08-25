import 'package:codeschool/constants.dart';
import 'package:codeschool/screens/login_screen/login_screen.dart';
import 'package:codeschool/screens/register_screen/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = 'HomeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            const Image(image: AssetImage("assets/images/codeschool.png")),
            const SizedBox(height: kDefaultPadding * 3),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(
                        MediaQuery.of(context).size.width -
                            (kDefaultPadding * 2),
                        50),
                    textStyle: const TextStyle(fontSize: kButtonFontSize),
                    primary: kblackButtonColor),
                onPressed: () {
                  Navigator.pushNamed(context, LoginScreen.routeName);
                },
                child: Text("Login",
                    style:
                        GoogleFonts.expletusSans(fontWeight: FontWeight.bold))),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      side:
                          const BorderSide(width: 2, color: kblackButtonColor),
                      minimumSize: Size(
                          MediaQuery.of(context).size.width -
                              (kDefaultPadding * 2),
                          50),
                      textStyle: const TextStyle(
                        fontSize: kButtonFontSize,
                      ),
                      primary: kprimaryColor,
                      onPrimary: kblackTextColor),
                  onPressed: () {
                    Navigator.pushNamed(context, RegisterScreen.routeName);
                  },
                  child: Text("Register",
                      style: GoogleFonts.expletusSans(
                          fontWeight: FontWeight.bold))),
            ),
            const Spacer(),
            TextButton(onPressed: () {}, child: const Text("Continue as guest"))
          ],
        ),
      ),
    );
  }
}

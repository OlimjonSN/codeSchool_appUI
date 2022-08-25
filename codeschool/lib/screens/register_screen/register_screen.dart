import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:codeschool/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:codeschool/myicon_icons.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);
  static const String routeName = "RegisterScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: ksmallTextColor, width: 1.5)),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      FontAwesomeIcons.angleLeft,
                      size: 30,
                      color: kblackTextColor,
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.all(kDefaultPadding),
                child: Text(
                  "Welcome back! Glad\nto see you, Again!",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(children: [
              textField(data: "username"),
              const SizedBox(height: 10),
              textField(data: "email addres"),
              const SizedBox(height: 10),
              textField(data: "password"),
              const SizedBox(height: 10),
              textField(data: "confirm password"),
              sizedBox,
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(
                          MediaQuery.of(context).size.width -
                              (kDefaultPadding * 1.8),
                          50),
                      textStyle: const TextStyle(fontSize: kButtonFontSize),
                      primary: kblackButtonColor),
                  onPressed: () {},
                  child: Text("Agree & Register",
                      style: GoogleFonts.expletusSans(
                          fontWeight: FontWeight.bold))),
            ]),
          ),
          Row(
            children: const [
              Expanded(
                  child: Divider(
                height: 50,
                thickness: 1.5,
              )),
              Text(
                " Or Login with ",
                style: TextStyle(
                    color: ksmallTextColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              Expanded(
                  child: Divider(
                height: 50,
                thickness: 1.5,
              ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(kDefaultPadding / 2),
                child:
                    withLoginButton(color: Colors.blue, icon: Myicon.facebook),
              ),
              withLoginButton(color: Colors.red, icon: Myicon.google),
              Padding(
                padding: const EdgeInsets.all(kDefaultPadding / 2),
                child: withLoginButton(color: Colors.black, icon: Myicon.apple),
              ),
            ],
          )
        ],
      ),
    );
  }

  InkWell withLoginButton({Color color = Colors.blue, required IconData icon}) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 50,
        width: 80,
        decoration: BoxDecoration(
            border: Border.all(color: ksmallTextColor, width: 0.5),
            borderRadius: BorderRadius.circular(10)),
        child: Icon(
          icon,
          color: color,
        ),
      ),
    );
  }

  TextField textField({
    required String data,
  }) {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        isDense: true,
        hintText: data,
      ),
      style: const TextStyle(
          color: kblackTextColor, fontSize: 17, fontWeight: FontWeight.w300),
    );
  }
}

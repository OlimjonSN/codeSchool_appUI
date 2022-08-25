import 'package:codeschool/constants.dart';
import 'package:codeschool/myicon_icons.dart';
import 'package:codeschool/screens/register_screen/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

late bool _passwordVisible;

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const routeName = "LoginScreen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    _passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: Column(children: [
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
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    buildEmailAdressField(),
                    halfSizedBox,
                    buildPasswordField(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          "Forgot password?",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: kDefaultPadding * 2,
                    ),
                    defaultButton(
                      onPress: () {
                        if (_formkey.currentState!.validate()) {}
                      },
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
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(kDefaultPadding / 2),
                          child: withLoginButton(
                              color: Colors.blue, icon: Myicon.facebook),
                        ),
                        withLoginButton(color: Colors.red, icon: Myicon.google),
                        Padding(
                          padding: const EdgeInsets.all(kDefaultPadding / 2),
                          child: withLoginButton(
                              color: Colors.black, icon: Myicon.apple),
                        ),
                      ],
                    )
                  ],
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Do you haven an account?"),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, RegisterScreen.routeName);
                },
                child: const Text(" Register now"),
              )
            ],
          )
        ]),
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

  TextFormField buildEmailAdressField() {
    return TextFormField(
      validator: (value) {
        RegExp regExp = RegExp(emailPattern);
        if (value == null || value.isEmpty) {
          return "Plaese enter some text";
        } else if (!regExp.hasMatch(value)) {
          return 'Please enter a valid email address';
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        isDense: true,
        hintText: "enter your email",
      ),
      style: const TextStyle(
          color: kblackTextColor, fontSize: 17, fontWeight: FontWeight.w300),
    );
  }

  TextFormField buildPasswordField() {
    return TextFormField(
      validator: ((value) {
        if (value!.length < 8) {
          return "Must be more than 8 characters";
        }
        return null;
      }),
      obscureText: _passwordVisible,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            },
            icon: Icon(_passwordVisible
                ? FontAwesomeIcons.eyeSlash
                : FontAwesomeIcons.eye)),
        isDense: true,
        hintText: "enter your password",
      ),
      style: const TextStyle(
          color: kblackTextColor, fontSize: 17, fontWeight: FontWeight.w300),
    );
  }
}

class defaultButton extends StatelessWidget {
  final VoidCallback onPress;
  const defaultButton({
    Key? key,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            minimumSize: Size(
                MediaQuery.of(context).size.width - (kDefaultPadding * 2), 50),
            textStyle: const TextStyle(fontSize: kButtonFontSize),
            primary: kblackButtonColor),
        onPressed: onPress,
        child: Text("Login",
            style: GoogleFonts.expletusSans(fontWeight: FontWeight.bold)));
  }
}

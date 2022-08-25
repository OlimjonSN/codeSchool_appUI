import 'package:codeschool/constants.dart';
import 'package:codeschool/routes.dart';
import 'package:codeschool/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "CodeSchool App",
      theme: ThemeData.light().copyWith(
          inputDecorationTheme: InputDecorationTheme(
            disabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: ksmallTextColor)),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: kerrorborder)),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: kerrorborder)),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            fillColor: ktextFieldColor,
            filled: true,
          ),
          scaffoldBackgroundColor: kprimaryColor,
          primaryColor: kprimaryColor),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}

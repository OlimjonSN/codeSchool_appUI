import 'package:codeschool/screens/home_screen/home_screen.dart';
import 'package:codeschool/screens/login_screen/login_screen.dart';
import 'package:codeschool/screens/splash_screen/splash_screen.dart';
import 'package:codeschool/screens/register_screen/register_screen.dart';
import 'package:flutter/cupertino.dart';

Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  LoginScreen.routeName: (context) => const LoginScreen(),
  RegisterScreen.routeName: (context) => const RegisterScreen(),
  HomeScreen.routeName: (context) => const HomeScreen()
};

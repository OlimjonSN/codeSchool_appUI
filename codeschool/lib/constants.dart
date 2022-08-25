import 'package:flutter/material.dart';

const Color kprimaryColor = Color(0xFFffffff);
const Color kblackButtonColor = Color(0xFF1f232c);
const Color ktextFieldColor = Color(0xFFf7f8fa);
const Color ksmallTextColor = Color(0xFF8e9396);
const Color kblackTextColor = Color(0xFF1c1d20);
const Color kwhiteTextColor = Color(0xFFffffff);
const Color ktextfieldColor = Color(0xFFEEEEEE);
const Color kerrorborder = Color(0xFFE53935);
const double kButtonFontSize = 15;
const sizedBox = SizedBox(height: kDefaultPadding);
const halfSizedBox = SizedBox(height: kDefaultPadding / 2);

const kDefaultPadding = 25.0;
// validation for bomile
const String mobilePattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';

// validation for email
const String emailPattern =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

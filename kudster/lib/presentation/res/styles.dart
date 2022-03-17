import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Styles{
  static const headline = TextStyle(
    color: Colors.black,
    fontFamily: "Motserrat",
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
  );

  static const subHeadline = TextStyle(
    color: Colors.black,
    fontFamily: "Inter",
    letterSpacing: 0,
  );

  static final title = headline.copyWith(fontSize: 18);


}
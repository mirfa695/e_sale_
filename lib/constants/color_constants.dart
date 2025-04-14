import 'dart:math';

import 'package:flutter/material.dart';

class ColorConstants {
 
  static const primary=Color.fromARGB(255, 99, 175, 189);
static final Color whiteOpacity=Colors.white.withOpacity(.6);
static const secondary=Color.fromARGB(255, 138, 187, 196);
static const tertiary=Color.fromARGB(255, 68, 164, 181);
static const Color whiteColor=const Color(0xffffffff);
static Color greyColor=const Color(0xff808080);
static Color lightGreyColr=Colors.grey[400]!;
static Color extraLightGrey=Colors.grey[200]!;
static Color greenColor= Colors.green[800]!;
static Color redColor=Colors.red[800]!;
static  List<Color> gradientColors= [
    tertiary.withOpacity(.1),
    secondary.withOpacity(.1),
    primary.withOpacity(.1),
    whiteColor,
  ];
 static  SweepGradient customGradient = SweepGradient(
  colors: [
    
    tertiary.withOpacity(.1),
    secondary.withOpacity(.1),
    primary.withOpacity(.1),
    whiteColor,
    
  ],
  startAngle: 0.0,
  endAngle: pi * 2,
);

}
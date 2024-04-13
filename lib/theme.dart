import 'dart:ui';

import 'package:flutter/material.dart';

Color primaryblue = const Color(0xFF02BBDD);
Color customGrey = const Color(0xFFA5A5A5);

TextStyle Besar = const TextStyle (
  fontSize: 25,
  fontWeight: FontWeight.w600,
);

TextStyle normal = const TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w300,
);

TextStyle buttonSecondary = normal.copyWith(
    color: Colors.black,
    fontWeight: FontWeight.w600
);

TextStyle buttonPrimary = normal.copyWith(
    color: Colors.white,
    fontWeight: FontWeight.w600
);
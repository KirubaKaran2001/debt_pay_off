// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

var darkTheme = const ColorScheme(
  primary: Color(0xffffffff),
  primaryVariant: Color.fromRGBO(72, 72, 72, 1),
  secondary: Color(0xffc8332c),
  secondaryVariant: Color(0xffff7263),
  surface: Color(0xff000000),
  background: Color(0xff000000),
  error: Color(0xffffffff),
  onPrimary: Color(0xffffffff),
  onSecondary: Color(0xffffffff),
  onSurface: Color(0xff000000),
  onBackground: Color(0xffffffff),
  onError: Color(0xffffffff),
  brightness: Brightness.dark,
);

final ThemeData myDarkTheme = ThemeData(
  colorScheme: darkTheme.copyWith(
    secondary: darkTheme.secondary,
  ),
  scaffoldBackgroundColor: Colors.black,
  bottomAppBarTheme: const BottomAppBarTheme(
    color: Colors.transparent,
  ),
);


import 'package:flutter/material.dart';

class MyThemes {
static final darkTheme = ThemeData(
  scaffoldBackgroundColor: Colors.grey[900],
  colorScheme: const ColorScheme.dark(),
  primaryColor: Colors.black
);
static final lightTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  colorScheme: const ColorScheme.light(),
  primaryColor: Colors.white,

);
}
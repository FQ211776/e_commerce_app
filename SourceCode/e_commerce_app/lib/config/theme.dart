import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Avenir',
    textTheme: const TextTheme(),
  );
}

TextTheme textTheme() {
  return const TextTheme(
      headline1: TextStyle(
    color: Colors.white,
    fontSize: 32,
    fontFamily: 'Avenir',
    fontWeight: FontWeight.bold,
  ));
}

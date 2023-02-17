import 'package:flutter/material.dart';

ThemeData myTheme = ThemeData(
  primarySwatch: Colors.orange,
  fontFamily: 'Montserrat',
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
      color: Color.fromRGBO(109, 112, 133, 1),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        width: 1,
        color: Color.fromRGBO(247, 147, 30, 1.0),
      ),
    ),
  ),
);

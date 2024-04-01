import 'package:flutter/material.dart';

class AppTheme {

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    appBarTheme: const AppBarTheme(centerTitle: false),
    colorSchemeSeed: const Color(0xff2862F5) 
  );
      
  

}
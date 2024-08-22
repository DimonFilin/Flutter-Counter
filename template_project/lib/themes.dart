import 'package:flutter/material.dart';


final kLightTheme = ThemeData.light().copyWith(
  primaryColor: Colors.blue, // Используйте цвет, который хорошо виден на светлом фоне
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.red,
    foregroundColor: Colors.blue
  ),
  canvasColor: Colors.black,
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: Colors.lightBlue, fontSize: 18, fontWeight: FontWeight.bold), // Устанавливаем цвет текста для bodyText1
    bodyMedium: TextStyle(color: Colors.lightBlue), // Устанавливаем цвет текста для bodyText2
  ),
);

final kDarkTheme = ThemeData.dark().copyWith(
  primaryColor: Colors.amber,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.amber,
      foregroundColor: Colors.black

  ),
  canvasColor: Colors.black,
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: Colors.amberAccent, fontSize: 18, fontWeight: FontWeight.bold), // Устанавливаем цвет текста для bodyText1
    bodyMedium: TextStyle(color: Colors.amberAccent), // Устанавливаем цвет текста для bodyText2
  ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(unselectedItemColor: Colors.grey, selectedItemColor: Colors.amber),
    elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle(backgroundColor:MaterialStatePropertyAll<Color>( Colors.red),foregroundColor: MaterialStatePropertyAll<Color>(Colors.blue) )),

);
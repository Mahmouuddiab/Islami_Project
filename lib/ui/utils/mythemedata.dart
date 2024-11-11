import 'package:flutter/material.dart';

class MyThemeData{
static final Color lightPrimary=Color(0xffB7935F);
static final Color darkPrimary=Color(0xff141A2E);
static final Color darkSecondary=Color(0xffFACC1D);
static final ThemeData lightTheme = ThemeData(
    textTheme: TextTheme(
        titleMedium: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontFamily: "Messiri",
        ),
        titleSmall: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            fontFamily: "Messiri"
        )
    ),
  cardTheme: CardTheme(
    color: Colors.white,
    surfaceTintColor: null
  ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: lightPrimary,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,



    ),
    appBarTheme:AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle:TextStyle(fontSize: 30,fontWeight:FontWeight.bold,color: Colors.black)
    ),
    colorScheme:ColorScheme.fromSeed(
        seedColor: Color(0xffB7935F),
        primary: Color(0xffB7935F),
        onPrimary: Colors.white,
        secondary: Color(0xffB7935F),
        onSecondary: Colors.black
    )
);
static final ThemeData darktTheme = ThemeData(
  textTheme: TextTheme(
    titleMedium: TextStyle(
      color: Colors.white,
      fontSize: 30,
      fontWeight: FontWeight.bold,
      fontFamily: "Messiri",
    ),
    titleSmall: TextStyle(
        color: Colors.white,
      fontSize: 25,
      fontWeight: FontWeight.w500,
      fontFamily: "Messiri"
    )
  ),
  cardTheme: CardTheme(
    color: darkPrimary,
    surfaceTintColor: null
  ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: darkPrimary,
      selectedItemColor: darkSecondary,
      unselectedItemColor: Colors.white,



    ),
    appBarTheme:AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle:TextStyle(fontSize: 30,fontWeight:FontWeight.bold,color: Colors.white)
    ),
    colorScheme:ColorScheme.fromSeed(
        seedColor: darkPrimary,
        primary: darkPrimary,
        onPrimary: Colors.white,
        secondary: darkSecondary,
        onSecondary: Colors.black
    )
);
}
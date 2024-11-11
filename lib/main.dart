
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islamii/ui/provider/theme_provider.dart';
import 'package:islamii/ui/screens/chapterdetails/chapterdetails.dart';
import 'package:islamii/ui/screens/hadethdetails/hadethdetails.dart';
import 'package:islamii/ui/screens/home/home.dart';
import 'package:islamii/ui/screens/splash/splash.dart';
import 'package:islamii/ui/utils/mythemedata.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(ChangeNotifierProvider(
    create: (context)=>ThemeProvider(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Arabic
      ],
      debugShowCheckedModeBanner: false,
      theme: MyThemeData.lightTheme,
        darkTheme: MyThemeData.darktTheme,
        themeMode: themeProvider.currentTheme,
        routes: {
          Splash.routeName: (_) => Splash(),
          Home.routeName: (_) => Home(),
          ChapterDetails.routeName:(_)=>ChapterDetails(),
          HadethDetails.routeName:(_)=>HadethDetails(),

    },
    initialRoute: Splash.routeName,
    );
  }
}

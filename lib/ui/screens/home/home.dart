import 'package:flutter/material.dart';
import 'package:islamii/ui/provider/theme_provider.dart';
import 'package:islamii/ui/screens/home/tabs/hadeth/hadeth_tab.dart';
import 'package:islamii/ui/screens/home/tabs/quran/quran_tab.dart';
import 'package:islamii/ui/screens/home/tabs/radio/radio_tab.dart';
import 'package:islamii/ui/screens/home/tabs/sebha/sebha_tab.dart';
import 'package:islamii/ui/screens/home/tabs/setting/setting.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamii/ui/utils/mythemedata.dart';
import 'package:provider/provider.dart';


class Home extends StatefulWidget {
  static const String routeName="home";
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
int selectedIndex=0;

  @override

  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    bool isDark=themeProvider.isDarkEnables();
    return Stack(
      children: [
        Image.asset(isDark? "assets/photos/home_dark_background.png":"assets/photos/default_bg.png"),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)?.appTitle??"Islami",style: Theme.of(context).textTheme.titleMedium,),
          ),
          bottomNavigationBar: BottomNavigationBar(
           currentIndex: selectedIndex,
            onTap: (index){

             setState(() {
               selectedIndex=index;
             });
            },
            items: [
              BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/photos/icon_quran.png")),label:"quran",backgroundColor:Theme.of(context).colorScheme.primary),
              BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/photos/icon_hadeth.png")),label:"hadeth",backgroundColor:Theme.of(context).colorScheme.primary),
              BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/photos/icon_sebha.png")),label:"sebha",backgroundColor:Theme.of(context).colorScheme.primary),
              BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/photos/icon_radio.png")),label:"radio",backgroundColor:Theme.of(context).colorScheme.primary),
              BottomNavigationBarItem(icon:Icon(Icons.settings),label:"Setting",backgroundColor:Theme.of(context).colorScheme.primary)

            ],
          ),
          body: tabs[selectedIndex],
        )
      ],
    );
  }
  var tabs = [QuranTab(),HadethTab(),SebhaTab(),RadioTab(),SettingTab()];
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamii/ui/provider/theme_provider.dart';
import 'package:islamii/ui/utils/mythemedata.dart';
import 'package:provider/provider.dart';

class HadethDetails extends StatefulWidget {
  static const String routeName = "hadethdetails";
   HadethDetails({super.key});

  @override
  State<HadethDetails> createState() => _HadethDetailsState();
}

class _HadethDetailsState extends State<HadethDetails> {
List <String> verses=[];

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider= Provider.of<ThemeProvider>(context);
    bool isDark=themeProvider.isDarkEnables();
    var args=ModalRoute.of(context)?.settings.arguments as HadethDetailArgs;
    readDataHadeth(args.hadethIndex);
    return Stack(
      children: [
        Image.asset(isDark?"assets/photos/home_dark_background.png":"assets/photos/default_bg.png"),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(title:Text(args.hadethTitle),),
          body: Card(
            elevation: 24,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
            margin: EdgeInsets.symmetric(vertical: 64,horizontal: 24),
            child:verses.isNotEmpty? ListView.builder(
                itemBuilder: (context,index)=>Text(verses[index],style:Theme.of(context).textTheme.titleSmall,textAlign:TextAlign.center,),
                itemCount: verses.length,
            )
                :Center(child: CircularProgressIndicator())
            ,
          ),
        )
      ],
    );
  }
void readDataHadeth(int index)async{
  String fileContent= await rootBundle.loadString("assets/ahadeth/${index+1}.txt");
  List<String> lines=fileContent.trim().split("/n");
  setState(() {
    verses=lines;
  });
}
}

class HadethDetailArgs{
  int hadethIndex;
  String hadethTitle;
  HadethDetailArgs({required this.hadethIndex,required this.hadethTitle});
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamii/ui/provider/theme_provider.dart';
import 'package:islamii/ui/utils/mythemedata.dart';
import 'package:provider/provider.dart';

class ChapterDetails extends StatefulWidget {
  static const String routeName="chapterdetails";
  const ChapterDetails({super.key});

  @override
  State<ChapterDetails> createState() => _ChapterDetailsState();
}

class _ChapterDetailsState extends State<ChapterDetails> {
  @override
  List <String> verses=[];

  Widget build(BuildContext context) {
    ThemeProvider themeProvider= Provider.of<ThemeProvider>(context);
    bool isDark=themeProvider.isDarkEnables();
    var args=ModalRoute.of(context)?.settings.arguments as ChapterDetailsArgs;
    readDataFile(args.chapterIndex);
    return Stack(
children: [
  Image.asset(isDark?"assets/photos/home_dark_background.png":"assets/photos/default_bg.png"),
    Scaffold(
    backgroundColor: Colors.transparent,
    appBar: AppBar(
    title: Text(args.chapterTitle),
    ),
      body: Card(
        elevation: 24,
        shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(24)),
        margin: EdgeInsets.symmetric(vertical: 64,horizontal: 24),
            child: verses.isNotEmpty ? ListView.builder(
            itemBuilder: (context,index)=>Text(verses[index],style:Theme.of(context).textTheme.titleSmall,textAlign:TextAlign.center,),
            itemCount: verses.length,
        )
          :Center(child: CircularProgressIndicator(),)

      ),
    ),
],
    );
  }

 void readDataFile(int index)async{
    String fileContent= await rootBundle.loadString("assets/files/${index+1}.txt");
    List<String> lines=fileContent.trim().split("/n");
    setState(() {
      verses=lines;
    });
 }
}
class ChapterDetailsArgs{
  int chapterIndex;
  String chapterTitle;

  ChapterDetailsArgs({required this.chapterIndex,required this.chapterTitle});
}

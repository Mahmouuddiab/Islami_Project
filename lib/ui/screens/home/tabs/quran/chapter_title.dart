import 'package:flutter/material.dart';
import 'package:islamii/ui/screens/chapterdetails/chapterdetails.dart';

class ChapterTitle extends StatelessWidget {
  int index;
  String title;
  ChapterTitle(this.title,this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, ChapterDetails.routeName,arguments:
        ChapterDetailsArgs(chapterIndex: index, chapterTitle: title));
      },
      child: Text(
          title,textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.titleSmall,
      ),
    );
  }
}

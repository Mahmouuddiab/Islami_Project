import 'package:flutter/material.dart';
import 'package:islamii/ui/screens/hadethdetails/hadethdetails.dart';

class HadethTitle extends StatelessWidget {
  String title;
  int index;
  HadethTitle(  this.title, this.index);

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, HadethDetails.routeName,arguments:HadethDetailArgs(
         hadethIndex: index,hadethTitle: title
        )
        );
      },
      child: Text(title,textAlign: TextAlign.center,
        style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),),
    );
  }
}

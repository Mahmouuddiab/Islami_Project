import 'package:flutter/material.dart';
import 'package:islamii/ui/screens/home/tabs/hadeth/hadethtitle.dart';
import 'package:islamii/ui/utils/mythemedata.dart';

class HadethTab extends StatelessWidget {
   HadethTab({super.key});
var chaptersAhadeth=["الحديث رقم 1","الحديث رقم 2","الحديث رقم 3","الحديث رقم 4","الحديث رقم 5","الحديث رقم 6","الحديث رقم 7","الحديث رقم 8","الحديث رقم 9","الحديث رقم 10 ","الحديث رقم 11","الحديث رقم 12","الحديث رقم 13","الحديث رقم 14","الحديث رقم 15"];
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Image.asset("assets/photos/hadeth_logo.png"),
        SizedBox(height: 5,),
        Divider(thickness: 3,color: MyThemeData.lightPrimary,),
        Text("Hadeth Number",style:TextStyle(fontSize: 24,fontWeight:FontWeight.bold),),
        Divider(thickness: 3,color: MyThemeData.lightPrimary,),
        Expanded(
          child: ListView.separated(
              itemBuilder: (context,index)=>HadethTitle(chaptersAhadeth[index],index),
              separatorBuilder: (context,index)=>Container(height: 3,width: double.infinity,color:MyThemeData.lightPrimary,margin:EdgeInsets.symmetric(horizontal: 64),),
              itemCount: chaptersAhadeth.length
          ),
        )


      ],
    );

  }
}

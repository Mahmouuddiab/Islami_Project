import 'package:flutter/material.dart';
import 'package:islamii/ui/utils/mythemedata.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 130,),
        Image.asset("assets/photos/radio_image.png"),
        SizedBox(height: 45,),
        Text("Holy Quran Radio",style:TextStyle(fontSize:25,fontWeight:FontWeight.w600),),
        SizedBox(height: 60,),
        Row(children: [
          SizedBox(width: 50,),
          Icon(Icons.chevron_left,color:MyThemeData.lightPrimary,size: 45,),
          SizedBox(width: 90,),
          Icon(Icons.smart_display_outlined,color:MyThemeData.lightPrimary,size: 45,),
          SizedBox(width:90 ,),
          Icon(Icons.chevron_right,color:MyThemeData.lightPrimary,size: 45,)
        ],)
      ],
    );
  }
}

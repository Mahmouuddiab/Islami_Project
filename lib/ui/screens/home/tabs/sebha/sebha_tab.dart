import 'package:flutter/material.dart';
import 'package:islamii/ui/utils/mythemedata.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  @override
  int count=0;
  int index=0;
  double turn=0;
  List<String>Azkar=["Praise Allah","Alhamd to Allah","Allah Akbar",];
  Widget build(BuildContext context) {

    return Column(
      children: [
        Align(
          alignment: Alignment.center,
          child: Stack(

            children: [
            Padding(
              padding:EdgeInsets.only(left: MediaQuery.of(context).size.width*0.2),
              child: Image.asset("assets/photos/head_sebha_logo.png"),
            ),
            Padding(
              padding:EdgeInsets.only(top:MediaQuery.of(context).size.height*0.086),
              child: AnimatedRotation(
                duration: Duration(milliseconds: 500),
                  turns: turn,
                  child: Image.asset("assets/photos/body_sebha_logo.png",)),
            ),
          ],
          ),
        ),
        SizedBox(height: 43,),
        Text("Count of Tasbeh",style:TextStyle(fontSize: 25,fontWeight:FontWeight.w500),),
        SizedBox(height: 43,),
        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(24),color:MyThemeData.lightPrimary.withOpacity(0.5)),
          child: Text(count.toString(),style: TextStyle(fontSize: 24,fontWeight:FontWeight.w500),),
        ),
        SizedBox(height: 40,),
        ElevatedButton(
          style:ElevatedButton.styleFrom(backgroundColor:MyThemeData.lightPrimary,padding:EdgeInsets.all(10),shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
            onPressed: (){
            setState(() {
              count++;
              turn+=0.05;
              if(count>33){
                count=0;
                index++;
              }
              if(index>2){
                index=0;
              }
            });
            },
            child: Text(Azkar[index],style:TextStyle(fontSize:25,fontWeight:FontWeight.w500),)
        )

      ],
    );
  }
}

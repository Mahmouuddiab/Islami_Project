
import 'package:flutter/material.dart';
import 'package:islamii/ui/screens/home/tabs/setting/language_bottom_sheet.dart';
import 'package:islamii/ui/screens/home/tabs/setting/theme_bottom_sheet.dart';

class SettingTab extends StatelessWidget {
  const SettingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Theme",textAlign:TextAlign.start,style:Theme.of(context).textTheme.titleSmall,),
          SizedBox(height: 20,),
          InkWell(
            onTap: (){
              showThemeBottomSheet(context);
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 8,horizontal: 8),
              decoration: BoxDecoration(borderRadius:BorderRadius.circular(20),
                  border: Border.all(color:Theme.of(context).colorScheme.primary) ),
              child: Text("light",style:Theme.of(context).textTheme.titleSmall,),
            ),
          ),
          SizedBox(height: 20,),
          Text("Language",textAlign:TextAlign.start,style:Theme.of(context).textTheme.titleSmall,),
          SizedBox(height: 20,),
          InkWell(
            onTap: (){
              showLanguageBottomSheet(context);
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 8,horizontal: 8),
              decoration: BoxDecoration(border: Border.all(color:Theme.of(context).colorScheme.primary),
                  borderRadius:BorderRadius.circular(20) ),
              child: Text("english",style:Theme.of(context).textTheme.titleSmall,),
            ),
          ),
        ],
      ),
    );
  }
  void showThemeBottomSheet(BuildContext context){
    showModalBottomSheet(
  context: context,
  builder: (context)=>ThemeBottomSheet()
  );

}
void showLanguageBottomSheet(BuildContext context){
    showModalBottomSheet(context: context, builder:(context)=>LanguageBottomSheet()
    );
}

}

import 'package:flutter/material.dart';
import 'package:islamii/ui/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    return Container(
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: (){
              setState(() {
                themeProvider.changeTheme(ThemeMode.light);
              });
            },
              child: getSelectedItem(context,"light")),
          SizedBox(height: 25,),
          InkWell(
            onTap: (){
              setState(() {
                themeProvider.changeTheme(ThemeMode.dark);
              });
            },
              child: getUnSelectedItem(context,"Dark"))
        ],
      ),
    );
  }

  Widget getSelectedItem(BuildContext context,String text){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,style:Theme.of(context).textTheme.titleSmall?.copyWith(color:Theme.of(context).colorScheme.primary),),
        Icon(Icons.check,color:Theme.of(context).colorScheme.primary,)
      ],
    );
  }

  Widget getUnSelectedItem(BuildContext context,String text){
    return Text(text,style: Theme.of(context).textTheme.titleSmall,);
  }
}


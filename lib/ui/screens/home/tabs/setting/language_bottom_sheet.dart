import 'package:flutter/material.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getSelectedItem(context,"English"),
          SizedBox(height: 25,),
          getUnSelectedItem(context,"Arabic")
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





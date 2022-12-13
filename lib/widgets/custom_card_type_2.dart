import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(children:   [


        const FadeInImage(
          image: NetworkImage('https://cdn3.dpmag.com/2021/07/Landscape-Tips-Mike-Mezeul-II.jpg'),
          placeholder: AssetImage('assets/img/jar-loading.gif'),
          width: double.infinity,
          height: 230,
          fit: BoxFit.cover,
          fadeInDuration: Duration( milliseconds: 300),
          ),

          Container(
            alignment:  AlignmentDirectional.centerEnd,
            padding: EdgeInsets.only( right: 20, top: 10, bottom: 10),
            child: Text('Good Landscape')
          )
      ],)
    );
  }
}
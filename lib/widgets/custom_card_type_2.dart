import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(children:  const [


        FadeInImage(
          image: NetworkImage('https://cdn3.dpmag.com/2021/07/Landscape-Tips-Mike-Mezeul-II.jpg'),
          placeholder: AssetImage('assets/img/jar-loading.gif'),
          
          )
      ],)
    );
  }
}
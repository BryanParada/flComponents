import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10),
        children: const [
          
          CustomCardType1(), 
          SizedBox( height: 10,),
          CustomCardType2(imageUrl: 'https://picsum.photos/1920/1080',), 
          SizedBox( height: 10,),
          CustomCardType2(imageUrl: 'https://picsum.photos/720/540', name: 'A small photo',), 
          SizedBox( height: 10,),
          CustomCardType2(imageUrl: 'https://images.pexels.com/photos/2662116/pexels-photo-2662116.jpeg', name: 'Good Landscape but big photo!'), 
        


        ])
    );
  }
}


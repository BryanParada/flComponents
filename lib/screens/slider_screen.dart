import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
 
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders && Checks'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
      
            Slider.adaptive( //para dependiendo de la plataforma se adapte
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            // divisions: 10,
            value: _sliderValue,
            onChanged: (value) {
              _sliderValue = value;  
              setState(() {
                
              });
              }
               
            ),
      
            Image(
              image: NetworkImage('https://www.kindpng.com/picc/b/362-3627079_osomatsu-png.png'),
              fit: BoxFit.contain,
              width: _sliderValue
               ),

               const SizedBox( height: 50)
      
          ],
        ),
      )
    );
  }
}
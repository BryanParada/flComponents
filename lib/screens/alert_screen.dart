import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Center(
         child: ElevatedButton(
          // style: ElevatedButton.styleFrom(
          // backgroundColor: Colors.indigo,
          //   shape: const StadiumBorder(),
          //   elevation: 0
          // ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Show Alert', style: TextStyle( fontSize: 25)),
          ), 
          onPressed:() {
            
          },
         ),
      ),
      floatingActionButton: FloatingActionButton(
        
        child: const Icon(Icons.close),
        onPressed: () {
            Navigator.pop(context);
        },
      ),
    );
  }
}
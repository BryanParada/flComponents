import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS( BuildContext context){

    showCupertinoDialog(
      //barrierDismissible: true,
        context: context, 
        builder: (context) {
          return CupertinoAlertDialog(
              title: const Text('Title'),
              content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [ 
                Text('This is the content of the alert'),
                SizedBox(height: 10),
                FlutterLogo( size: 100)
            ]),

            actions: [
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancel', style: TextStyle( color: Colors.red))
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Ok')
              ) 
          ]

          );
        }
    );

  }

  void displayDialogAndroid(BuildContext context){
   
   showDialog(
    barrierDismissible: false,
      context: context, 
      builder: (context ) {

        return  AlertDialog(
          elevation: 5,
          title: const Text('Title'),
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [ 
              Text('This is the content of the alert'),
              SizedBox(height: 10),
              FlutterLogo( size: 100)
          ]),

          actions: [
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancel', style: TextStyle( color: Colors.red))
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Ok')
              )

          ]
        );
        
      }
      );


  }
  
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
          onPressed: () => Platform.isAndroid 
          ? displayDialogAndroid(context)
          : displayDialogIOS(context), //() cuando usamos Buildcontext

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
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs & Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column (children: const[

              CustomInputField( labelText: 'Name', hintText: 'User Name', helperText: 'Only letters'),
              SizedBox( height: 30,),
              CustomInputField( labelText: 'Last Name', hintText: 'Last name', helperText: 'Only letters'),
              SizedBox( height: 30,),
              CustomInputField( labelText: 'Email', hintText: 'Email', helperText: 'your email', keybType: TextInputType.emailAddress),
              SizedBox( height: 30,),
              CustomInputField( labelText: 'Password', hintText: 'Password', helperText: 'Type a strong password', obscureText: true, ),
              SizedBox( height: 30,),


          ],)
        ),
        )
    );
  }
}

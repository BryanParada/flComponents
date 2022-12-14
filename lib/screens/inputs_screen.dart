import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget { 

  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

  final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

  final Map<String, String> formValues = {
    'first_name': 'Bryan',
    'last_name' : 'Parada',
    'email'     : 'bryan@google.com',
    'password'  : '123456',
    'role'      : 'Admin'

  };
 

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs & Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,


            child: Column (
              children: [
          
                CustomInputField( labelText: 'Name', hintText: 'User Name', helperText: 'Only letters'),
                SizedBox( height: 30,),
                CustomInputField( labelText: 'Last Name', hintText: 'Last name', helperText: 'Only letters'),
                SizedBox( height: 30,),
                CustomInputField( labelText: 'Email', hintText: 'Email', helperText: 'your email', keybType: TextInputType.emailAddress),
                SizedBox( height: 30,),
                CustomInputField( labelText: 'Password', hintText: 'Password', helperText: 'Type a strong password', obscureText: true, ),
                SizedBox( height: 30,),
          
                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Save'))),
                 onPressed: (){

                  FocusScope.of(context).requestFocus( FocusNode() );

                  if ( !myFormKey.currentState!.validate() ){
                    print('Invalid Form!');
                    return;
                  }
                  //*: impirmir valores del formulario
                  print(formValues);
                 }, 
                 )
          
          
            ],),
          )
        ),
        )
    );
  }
}

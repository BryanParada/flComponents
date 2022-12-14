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
          
                CustomInputField( labelText: 'Name', hintText: 'User Name', helperText: 'Only letters', formProperty: 'first_name', formValues: formValues,),
                const SizedBox( height: 30,),
                CustomInputField( labelText: 'Last Name', hintText: 'Last name', helperText: 'Only letters', formProperty: 'last_name', formValues: formValues),
                const SizedBox( height: 30,),
                CustomInputField( labelText: 'Email', hintText: 'Email', helperText: 'your email', keybType: TextInputType.emailAddress, formProperty: 'email', formValues: formValues),
                const SizedBox( height: 30,),
                CustomInputField( labelText: 'Password', hintText: 'Password', helperText: 'Type a strong password', obscureText: true, formProperty: 'password', formValues: formValues ),
                const SizedBox( height: 30,),


                DropdownButtonFormField<String>( //String no es necesario
                  items: const [
                    DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                    DropdownMenuItem(value: 'Superuser', child: Text('Superuser')),
                    DropdownMenuItem(value: 'Dveloper', child: Text('Dveloper')),
                    DropdownMenuItem(value: 'Jr Developer', child: Text('Jr Developer')),
                  ],
                  onChanged: (value) {
                    print(value);
                    formValues['role'] = value ?? 'Admin';
                  },
                ),


          
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

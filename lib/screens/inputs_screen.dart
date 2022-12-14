import 'package:flutter/material.dart';

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
          child: Column(children: [

              TextFormField(
                autofocus: true,
                initialValue: '',
                textCapitalization: TextCapitalization.words,
                onChanged: (value) {
                  print('value: $value');
                },
                validator:(value) {
                  if ( value == null ) return 'This field is required';
                  return value.length <3 ? '3 Letters minimun' : null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                  hintText: 'User Name placeholder',
                  labelText: 'Name',
                  helperText: 'Only letters',
                  counterText: '3 characters',
                  //prefixIcon: Icon( Icons.verified_user_outlined),
                  suffixIcon: Icon( Icons.group),
                  icon: Icon( Icons.assignment_ind_outlined),
                  focusedBorder: OutlineInputBorder( //focusedBorder quitara los estilos de border: OutlineInputBorder v
                    borderSide: BorderSide(
                      color: Colors.green
                    )
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                       bottomLeft: Radius.circular(10),
                       topRight: Radius.circular(10)
                       ) 
                     )
                  )
              )

          ],)
        ),
        )
    );
  }
}
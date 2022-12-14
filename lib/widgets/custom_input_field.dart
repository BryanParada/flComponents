import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;

  final TextInputType? keybType;
  final bool obscureText;

  const CustomInputField({
    Key? key, 
    this.hintText, 
    this.labelText, 
    this.helperText, 
    this.icon,
    this.suffixIcon,
    this.keybType,
     this.obscureText = false ,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      keyboardType: keybType,
      obscureText: obscureText,
      onChanged: (value) {
        print('value: $value');
      },
      validator:(value) {
        if ( value == null ) return 'This field is required';
        return value.length <3 ? '3 Letters minimun' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration:  InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        //counterText: '3 characters',
        //prefixIcon: Icon( Icons.verified_user_outlined),
        suffixIcon: icon == null ? null : Icon(suffixIcon),
        icon: icon == null ? null : Icon(icon),
        // focusedBorder: OutlineInputBorder( //focusedBorder quitara los estilos de border: OutlineInputBorder v
        //   borderSide: BorderSide(
        //     color: Colors.green
        //   )
        // ),
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.only(
        //      bottomLeft: Radius.circular(10),
        //      topRight: Radius.circular(10)
        //      ) 
        //    )
        )
    );
  }
}
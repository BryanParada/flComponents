import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon( Icons.photo_album_outlined, color: AppTheme.primary),
            title: Text('I am a title'),
            subtitle: Text('lorem lorem ajsdlkajldkasjldkjasdlkaj'),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){},
                   child: const Text('Cancel'),
                   //style: TextButton.styleFrom(foregroundColor: Colors.red)
                   ),
                 TextButton(
                  onPressed: (){},
                   child: const Text('Ok')
                   )
              ],
            ),
          )

        ],
      )
    );
  }
}
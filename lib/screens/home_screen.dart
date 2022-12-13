import 'package:fl_components/router/app_routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Components'),
        //elevation: 0, //sombra
      ),
      body: ListView.separated(
        itemBuilder: (context, i) => ListTile(
          leading: Icon(AppRoutes.menuOptions[i].icon, color: Colors.indigo), //const Icon( Icons.access_time_outlined)
          title: Text(AppRoutes.menuOptions[i].name), //const Text('Route name')
          onTap: (){

            // final route = MaterialPageRoute(
            //   builder: (context) => const Listview1Screen()
            //   );

            // //Navigator.pushReplacement(context, route); // quita el boton atras, para login porej
            // Navigator.push(context, route);

            Navigator.pushNamed(context, AppRoutes.menuOptions[i].route); //'alert'
            
          },
        ),
        separatorBuilder: (_,__) => const Divider(),
        itemCount: AppRoutes.menuOptions.length
        )
    );
  }
}
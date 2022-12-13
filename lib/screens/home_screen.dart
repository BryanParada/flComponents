import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Components'),
        elevation: 0, //sombra
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: const Icon( Icons.access_time_outlined),
          title: const Text('Route name'),
          onTap: (){

            // final route = MaterialPageRoute(
            //   builder: (context) => const Listview1Screen()
            //   );

            // //Navigator.pushReplacement(context, route); // quita el boton atras, para login porej
            // Navigator.push(context, route);

            Navigator.pushNamed(context, 'alert');

          },
        ),
        separatorBuilder: (_,__) => const Divider(),
        itemCount: 10)
    );
  }
}
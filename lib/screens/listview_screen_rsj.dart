import 'package:examen_rsj/routes/app_routes.dart';
import 'package:flutter/material.dart';

class ListviewScreen extends StatelessWidget {
   
  const ListviewScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 30),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://www.tooltyp.com/wp-content/uploads/2014/10/1900x920-8-beneficios-de-usar-imagenes-en-nuestros-sitios-web.jpg'),
            ),
          )
        ],
        ),
      body: ListView.separated(
        itemBuilder: (context, index)=> ListTile(
          leading: Icon(AppRoutes.MenuOptions[index].icon),
          title: Text(AppRoutes.MenuOptions[index].name),
          onTap: (){
            
            Navigator.pushNamed(context, AppRoutes.MenuOptions[index].route);
          },
        ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: AppRoutes.MenuOptions.length,
      )
    );
  }
}
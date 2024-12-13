import 'package:examen_rsj/routes/app_routes.dart';
import 'package:flutter/material.dart';

class ListviewScreen extends StatelessWidget {
  const ListviewScreen({Key? key}) : super(key: key);
void displayDialog(BuildContext context){ 
    showDialog(
      barrierDismissible: false,
      context: context,
     builder: ( context ){
      return AlertDialog(
        title: const Text('AVISO'),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        content: const Column(
          mainAxisSize: MainAxisSize.min, 
          children: [
            Text('El sistema de reservas está deshabilitado en esos momentos'),
            SizedBox(height: 10,),
            FlutterLogo(size: 100,),

          ],
        ),
        actions: [
          TextButton(
          onPressed: () => Navigator.pop(context),
           child: const Text('Cancelar')
           )
        ],
        
      );
     }
     );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
          automaticallyImplyLeading:
              false, //No funcionaba pushreplacement y he usado esta propiedad
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 30),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://www.tooltyp.com/wp-content/uploads/2014/10/1900x920-8-beneficios-de-usar-imagenes-en-nuestros-sitios-web.jpg'),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => ListTile(
                  leading: Icon(AppRoutes.MenuOptions[index].icon),
                  title: Text(AppRoutes.MenuOptions[index].name),
                  onTap: () {
                    Navigator.pushNamed(
                        context, AppRoutes.MenuOptions[index].route);
                  },
                ),
                separatorBuilder: (context, index) => const Divider(),
                itemCount: 2,
              ),
              
            ),
            ElevatedButton(
          onPressed: ()=> displayDialog(context) , 
         child: const Padding(
           padding: EdgeInsets.all(20.0),
           child: Text('Mostrar Alerta', style: TextStyle(fontSize: 20),),
         )
         ),
            
          ],
        ));
  }
}

import 'package:examen_rsj/widgets/custom_card_rsj.dart';
import 'package:flutter/material.dart';

class PistasScreen extends StatelessWidget {
   
  const PistasScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pistas'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 30),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://www.tooltyp.com/wp-content/uploads/2014/10/1900x920-8-beneficios-de-usar-imagenes-en-nuestros-sitios-web.jpg'),
            ),
          )
        ],
        ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCard(imagenUrl: 'https://wallpapers.com/images/hd/4k-star-wars-the-force-awakens-acm74zjpq3j2pywa.jpg', nombre: 'Pista de pádel',),
          SizedBox(height: 10),
           CustomCard(imagenUrl: 'https://wallpapers.com/images/hd/4k-star-wars-the-force-awakens-acm74zjpq3j2pywa.jpg', nombre: 'Pista de baloncesto',),
          SizedBox(height: 10),
          
          
          
        ],
      )
    );
  }
}
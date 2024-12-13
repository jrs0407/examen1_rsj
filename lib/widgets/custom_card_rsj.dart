import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
final String imagenUrl;
final String? nombre;
  const CustomCard({super.key, required this.imagenUrl, this.nombre});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
child: Column(
  children: [
     FadeInImage(
      //'https://wallpapers.com/images/hd/4k-star-wars-the-force-awakens-acm74zjpq3j2pywa.jpg'
      image: NetworkImage(imagenUrl),
      width: double.infinity,
      height: 260,
      fit: BoxFit.cover, 
      placeholder: const AssetImage('assets/jar-loading.gif'),
      fadeInDuration: const Duration(microseconds: 3000),
      ),

      Container(
        padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20),
        child: 
        Column(
          children: [
            Text(nombre ?? 'Desconocido'),
            Text('Cupidatat aliquip sunt consectetur exercitation ipsum magna sunt labore.'),
            TextButton(onPressed: () {
            }, child: Text('Reservar'))
          ],
        ))
  ],
),
    );
  }
}
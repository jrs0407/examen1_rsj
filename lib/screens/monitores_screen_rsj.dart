import 'package:flutter/material.dart';

class MonitoresScreen extends StatelessWidget {
  const MonitoresScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Monitores'),
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
      body: const Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              maxRadius: 100,
              backgroundImage: NetworkImage(
                  'https://wallpapers.com/images/featured/sonrisa-de-majin-vegeta-2xw2ednhwu3qqtzq.jpg'),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Vegeta'),
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              maxRadius: 100,
              backgroundImage: NetworkImage(
                  'https://wallpapers.com/images/featured/sonrisa-de-majin-vegeta-2xw2ednhwu3qqtzq.jpg'),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Vegeta'),
            
          ],
        ),
      ),
    );
  }
}

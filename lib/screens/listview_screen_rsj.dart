import 'package:flutter/material.dart';

class ListviewScreen extends StatelessWidget {
   
  const ListviewScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar'),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              child: Text('JR'),
              backgroundColor: Colors.greenAccent,
            ),
          )
        ],
        ),
      body: const Center(
         child: Text('ListviewScreen'),
      ),
    );
  }
}
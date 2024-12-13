import 'package:examen_rsj/screens/signin_screen_rsj.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            const FlutterLogo(
              size: 200,
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SigninScreen(),
                      ));
                },
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Sing in',
                    style: TextStyle(fontSize: 20),
                  ),
                )),
            const SizedBox(
              height: 50,
            ),
            const ElevatedButton(
                onPressed: null,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Sing up',
                    style: TextStyle(fontSize: 20),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

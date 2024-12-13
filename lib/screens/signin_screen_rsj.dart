import 'package:examen_rsj/screens/listview_screen_rsj.dart';
import 'package:examen_rsj/widgets/custom_text_form_field_rsj.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'usuario': 'Andres',
      'password': '123456',
    };
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Form(
          key: myFormKey,
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              FlutterLogo(
                size: 100,
              ),
              SizedBox(
                height: 30,
              ),
              CustomTextFormField(
                hintText: 'Usuario',
                suffixIcon: Icons.person_2_sharp,
                obscureText: false,
                formProperty: 'usuario',
                formValues: formValues,
              ),
              const SizedBox(height: 30),
              CustomTextFormField(
                hintText: 'Contraseña',
                labelText: 'Contraseña',
                obscureText: true,
                formProperty: 'password',
                formValues: formValues,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ListviewScreen(),
                      ));
                    print(formValues);
                  },
                  child: SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Sign in')),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

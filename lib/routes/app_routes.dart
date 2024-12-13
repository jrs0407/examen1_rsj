
import 'package:flutter/material.dart';
import 'package:examen_rsj/models/menu_option.dart';
import '../screens/screens.dart';



class AppRoutes {
  static const initialRoute = 'home';

  static final MenuOptions = <MenuOption>[
    MenuOption(
      route: 'pistas', 
      icon: Icons.sports_basketball, 
      name: 'Pistas', 
      screen: const PistasScreen()),
      MenuOption(
      route: 'monitores', 
      icon: Icons.person, 
      name: 'Monitores', 
      screen: const MonitoresScreen()),
      
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for(final option in MenuOptions){
      appRoutes.addAll({option.route : (BuildContext context)=> option.screen});
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings){
        return MaterialPageRoute(
          builder: (context)=>const HomeScreen()
        );
      }


}
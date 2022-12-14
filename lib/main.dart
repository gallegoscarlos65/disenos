import 'package:disenos/screens/basic_design.dart';
import 'package:disenos/screens/home_screen.dart';
import 'package:disenos/screens/scroll_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //Para cambiar la barra de arriba donde sale el icono del Wifi, bateria, etc. Se puede usar un copywith
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home_screen',
      routes: {
        'basic_design': ( _ ) => BasicDesignScreen(),
        'scroll_screen': ( _ ) => ScrollScreen(),
        'home_screen': ( _ ) => HomeScreen(),
      }
    );
  }
}
/* Beneficios de trabajar con widgets y no con metodos: Flutter va a saber cuando redibujarlo y cuando no

*/

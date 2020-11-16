//import 'package:components/src/pages/home_temp.dart';

import 'package:components/src/pages/alert_page.dart';

import 'package:components/src/routes/routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      // home: HomePage(),
      routes: getAplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        print(' paso por Ongenerete ${settings.name}');
        //en este punto se puede validar la ruta antes de redirigir
        //ya que el error que se muestra, es consecuencia de
        //no regresar una Ruta.
        return MaterialPageRoute(
            builder: (BuildContext context) => AlertPage());
      },
    );
  }
}

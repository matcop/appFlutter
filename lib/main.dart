//import 'package:components/src/pages/home_temp.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
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
      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'), // English, no country code
        const Locale('es', 'ES'), // Arabic, no country code
        const Locale.fromSubtags(
            languageCode: 'zh'), // Chinese *See Advanced Locales below*
        // ... other locales the app supports
      ],
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

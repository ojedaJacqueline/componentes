import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/pages/avatar_page.dart';
import 'package:componentes/src/pages/home_page.dart';
import 'package:componentes/src/pages/routes/routes.dart';
//import 'package:componentes/src/pages/home_temp.dart';
import 'package:flutter/material.dart';




void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes APP',
      debugShowCheckedModeBanner: false,
      //home:HomePage(),
      initialRoute: '/',

      routes    : getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings ){
        print('Ruta llamda: ${settings.name}' );

        return MaterialPageRoute(
          builder: (BuildContext context) => AlertPage()

        );

      },
        );
  }
}

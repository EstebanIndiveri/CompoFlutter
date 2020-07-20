// import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/pages/card_page.dart';
// import 'package:componentes/src/pages/avatar_page.dart';
// import 'package:componentes/src/pages/home_page.dart';
import 'package:componentes/src/routes/routes.dart';
// import 'package:componentes/src/pages/home_temp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes app',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [
        const Locale('en','US'),
        const Locale('es','ES')
      ],
      // home: HomePageTempo()
      // home:HomePage(),
      initialRoute: '/',
      routes:getApplicationRoutes(),
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (context)=>CardPage());
      },
    );
  }
}
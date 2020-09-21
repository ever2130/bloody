import 'package:app_bloody/Usuarios/Donador.dart';
import 'package:app_bloody/Usuarios/InicioDonador.dart';
import 'package:app_bloody/LoginPage.dart';
import 'package:app_bloody/Usuarios/InicioDonador.dart';
import 'package:app_bloody/Usuarios/InicioDonador.dart' as prefix0;
import 'package:app_bloody/Usuarios/Pdonacion.dart';
import 'package:app_bloody/Usuarios/listarUsuarios.dart';
import 'package:app_bloody/Usuarios/registroUsuarios.dart';
import 'package:app_bloody/Usuarios/registropunto.dart';
import 'package:app_bloody/src/pages/home_page.dart';
import 'package:app_bloody/src/pages/page2/iniciopd.dart';
import 'package:app_bloody/src/pages/page2/mensaje_page.dart';
import 'package:app_bloody/src/pages/page2/maps.dart';
import 'package:app_bloody/src/pages/page2/inicio.dart';
import 'package:app_bloody/src/providers/push_notifications_provider.dart';
import 'LoginPage.dart';
import 'Registro.dart';
import 'Usuarios/Admi.dart';
import 'package:flutter/material.dart';
import 'package:app_bloody/Usuarios/tipoUsuario.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    final pushProvider= new PushNotificationProvider();
    pushProvider.initNotifications();

    pushProvider.mensajes.listen((data){
      //Navigator.pushNamed(context, 'messages');
      print('Argumento del push');
      print(data);

      navigatorKey.currentState.pushNamed('messages', arguments: data);
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
        title: 'BLOODY',
        home: LoginPage(),

        routes: <String, WidgetBuilder>{
          '/Registro': (BuildContext context) => new Registro(),
          '/Login': (BuildContext) => new LoginPage(),
          '/Admin': (BuildContext) => new Admi(),
          '/Donador': (BuildContext) => new Donador(),
          '/Pdonacion': (BuildContext) => new iniciopdonador(),
          '/listarusuarios': (BuildContext) => new ListarUser(),
          '/iniciod': (BuildContext) => new prefix0.iniciodonador(),
          '/tipo': (BuildContext) => new tipoUsuario(),
          '/rdonador': (BuildContext) => new Registro(),
          '/rpunto': (BuildContext) => new registropunto(),
          '/Maps': (BuildContext) => new maps(),
          '/Iniciodo': (BuildContext) => new inicio(),
        }
    );
  }

}
import 'package:app_bloody/main.dart';
import 'package:flutter/material.dart';
import 'package:app_bloody/src/pages/page2/mensaje_page.dart';
import 'package:app_bloody/src/pages/page2/inicio.dart';
import 'package:app_bloody/src/pages/page2/perfil.dart';

class iniciodonador extends StatefulWidget {
  @override
  _iniciodonadorState createState() => _iniciodonadorState();
}

class _iniciodonadorState extends State<iniciodonador> with SingleTickerProviderStateMixin{
  TabController _tabController;
  @override
  void initState(){
    super.initState();
        _tabController = new TabController(vsync: this, initialIndex: 1, length: 3 );
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Donante"),
        backgroundColor: Colors.red[900],
        bottom: new TabBar(
          controller: _tabController,
            tabs: <Widget>[
              new Tab(icon: new Icon(Icons.home)),
              new Tab(icon: new Icon(Icons.notifications)),
              new Tab(icon: new Icon(Icons.person_pin)),
            ]),
      ),
      body: new TabBarView(
          controller: _tabController,
          children: <Widget>[
        new inicio(),
        new notificacion(),
        new perfil()
      ]),
    );
  }
}

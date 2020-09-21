import 'package:flutter/material.dart';
import '../LoginPage.dart';
import 'AlertaPuntoDona.dart';

import 'package:app_bloody/main.dart';
import 'package:flutter/material.dart';
import 'package:app_bloody/src/pages/page2/mensaje_page.dart';
import 'package:app_bloody/src/pages/page2/iniciopd.dart';
import 'package:app_bloody/src/pages/page2/perfilpd.dart';

class iniciopdonador extends StatefulWidget {
  @override
  _iniciopdonadorState createState() => _iniciopdonadorState();
}

class _iniciopdonadorState extends State<iniciopdonador> with SingleTickerProviderStateMixin{
  TabController _tabController;
  @override
  void initState(){
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 2 );
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Punto de donacion"),
        backgroundColor: Colors.red[900],
        bottom: new TabBar(
            controller: _tabController,
            tabs: <Widget>[
              new Tab(icon: new Icon(Icons.home)),
              new Tab(icon: new Icon(Icons.person_pin)),
            ]),
      ),
      body: new TabBarView(
          controller: _tabController,
          children: <Widget>[
            new iniciopd(),
            new perfilpd()
          ]),
    );
  }
}

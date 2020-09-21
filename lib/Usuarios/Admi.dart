import 'package:app_bloody/LoginPage.dart';
import 'package:flutter/material.dart';

class Admi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(top: 80),
                child: new RawMaterialButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/listarusuarios');

                  },
                  child: new Icon(
                    Icons.people,
                    color: Colors.blueAccent,
                    size: 63.0,
                  ),
                  shape: new CircleBorder(),
                  elevation: 2.0,
                  fillColor: Colors.white,
                  padding: const EdgeInsets.all(7.0),
                ),
              ),
              new Padding(
                padding: const EdgeInsets.all(18.0),
              ),
              Container(
                padding: EdgeInsets.only(top: 80),
                child: new RawMaterialButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/LoginPage');
                  },
                  child: new Icon(
                    Icons.list,
                    color: Colors.grey[300],
                    size: 63.0,
                  ),
                  shape: new CircleBorder(),
                  elevation: 2.0,
                  fillColor: Colors.white,
                  padding: const EdgeInsets.all(7.0),
                ),
              ),
              new Padding(
                padding: const EdgeInsets.all(18.0),
              ),
              Container(
                padding: EdgeInsets.only(top: 80),
                child: new RawMaterialButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/LoginPage');
                  },
                  child: new Icon(
                    Icons.cloud_done,
                    color: Colors.greenAccent,
                    size: 63.0,
                  ),
                  shape: new CircleBorder(),
                  elevation: 2.0,
                  fillColor: Colors.white,
                  padding: const EdgeInsets.all(7.0),
                ),
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
              ),
            ],
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 40),
                  child: new RawMaterialButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/pages/listarUsuarios');
                    },
                    child: new Icon(
                      Icons.settings,
                      color: Colors.redAccent,
                      size: 63.0,
                    ),
                    shape: new CircleBorder(),
                    elevation: 2.0,
                    fillColor: Colors.white,
                    padding: const EdgeInsets.all(7.0),
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.all(18.0),
                ),
                Container(
                  padding: EdgeInsets.only(top: 40),
                  child: new RawMaterialButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/LoginPage');
                    },
                    child: new Icon(
                      Icons.backup,
                      color: Colors.lightBlue[300],
                      size: 63.0,
                    ),
                    shape: new CircleBorder(),
                    elevation: 2.0,
                    fillColor: Colors.white,
                    padding: const EdgeInsets.all(7.0),
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.all(18.0),
                ),
                Container(
                  padding: EdgeInsets.only(top: 40),
                  child: new RawMaterialButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/LoginPage');
                    },
                    child: new Icon(
                      Icons.alarm_on,
                      color: Colors.yellowAccent,
                      size: 63.0,
                    ),
                    shape: new CircleBorder(),
                    elevation: 2.0,
                    fillColor: Colors.white,
                    padding: const EdgeInsets.all(7.0),
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.all(10.0),
                ),
              ]),
          Row(// ROW 3
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 40),
                  child: new RawMaterialButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/pages/listarUsuarios');
                    },
                    child: new Icon(
                      Icons.picture_as_pdf,
                      color: Colors.red[900],
                      size: 70.0,
                    ),
                    shape: new CircleBorder(),
                    elevation: 2.0,
                    fillColor: Colors.white,
                    padding: const EdgeInsets.all(7.0),
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.all(18.0),
                ),
                Container(
                  padding: EdgeInsets.only(top: 40),
                  child: new RawMaterialButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/LoginPage');
                    },
                    child: new Icon(
                      Icons.local_printshop,
                      color: Colors.black,
                      size: 63.0,
                    ),
                    shape: new CircleBorder(),
                    elevation: 2.0,
                    fillColor: Colors.white,
                    padding: const EdgeInsets.all(7.0),
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.all(18.0),
                ),
                Container(
                  padding: EdgeInsets.only(top: 40),
                  child: new RawMaterialButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/adminPage');
                    },
                    child: new Icon(
                      Icons.vpn_key,
                      color: Colors.red[900],
                      size: 70.0,
                    ),
                    shape: new CircleBorder(),
                    elevation: 2.0,
                    fillColor: Colors.white,
                    padding: const EdgeInsets.all(7.0),
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.all(10.0),
                ),
              ]),
          //Row 4
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 70),
                child: new RawMaterialButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/Login');
                  },
                  child: new Icon(
                    Icons.exit_to_app,
                    color: Colors.red,
                    size: 70.0,
                  ),
                  shape: new CircleBorder(),
                  elevation: 2.0,
                  fillColor: Colors.white,
                  padding: const EdgeInsets.all(10.0),
                ),
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
              ),
            ],
          )
        ]
        )
    );
  }
}
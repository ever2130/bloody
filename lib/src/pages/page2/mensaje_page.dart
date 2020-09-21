import 'package:app_bloody/Usuarios/detail.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'dart:async';
import 'dart:convert';

class notificacion extends StatefulWidget {
  @override
  _notificacionState createState() => _notificacionState();
}

class _notificacionState extends State<notificacion> {
  @override

  Future<List> getData() async{
    final response = await http.get("https://bdbloody.000webhostapp.com/getalert.php");
    return json.decode(response.body);
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      body: new FutureBuilder<List>(

        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);
          return snapshot.hasData
              ? new ItemList(
            list: snapshot.data,
          ):
          new Center(
            child:
            new CircularProgressIndicator(backgroundColor: Colors.red[900],),
          );
        },
      ),
    );
  }
}

class ItemList extends StatelessWidget {
  final List list;
  ItemList({this.list});

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: list == null ? 0 : list.length,
      itemBuilder: (context, i) {
        return new Container(
          padding: const EdgeInsets.all(10.0),
          child: new GestureDetector(
            child: new Card(
              child: new ListTile(
                title: new Text(
                  list[i]['tipo'],
                  style: TextStyle(fontSize: 25.0, color: Colors.red),
                ),
                leading: new Icon(
                  Icons.notifications_active,
                  size: 40.0,
                  color: Colors.red,
                ),
                subtitle: new Text(
                  "tiempo : ${list[i]['tiempo']}",
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                ),

              ),
            ),
          ),
        );
      },
    );
  }
}

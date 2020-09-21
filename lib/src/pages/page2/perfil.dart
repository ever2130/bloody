import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:app_bloody/LoginPage.dart';
import 'dart:async';
import 'dart:convert';

class perfil extends StatefulWidget {
  @override
  _notificacionState createState() => _notificacionState();
}

class _notificacionState extends State<perfil> {
  @override




  Future<List> getData() async{
    final response = await http.get("https://bdbloody.000webhostapp.com/getdatos.php");
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

  Future<List> login() async {

    final response = await http.post("https://bdbloody.000webhostapp.com/login.php", body: {

    });

    var datauser = json.decode(response.body);
    print(datauser.toString());


    return datauser;
  }
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: list == null ? 0 : list.length,
      itemBuilder: (context, i) {
       if (list[i]['username']==username) {
          return Container(

              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 40.0),
                Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                        color: Colors.red[900],
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://centromedicomontemar.cl/wp-content/uploads/2015/06/sin-perfil.png'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(75.0)),
                        boxShadow: [
                          BoxShadow(blurRadius: 7.0, color: Colors.black)
                        ])),
                SizedBox(height: 20.0),

                Text(
                              //'$nombre''$apellido'
                  "               ${list[i]['nombre']}       ${list[i]['apellido']}",
                  style: TextStyle(

                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat'),

                ),
                SizedBox(height: 15.0),
                Text(
                  "Edad : ${list[i]['edad']}",
                  style: TextStyle(
                      fontSize: 30.0,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Montserrat'),
                ),
                SizedBox(height: 10.0),
                Text(
                  "Tipo de sangre : ${list[i]['tipos']}",
                  style: TextStyle(
                      fontSize: 30.0,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Montserrat'),
                ),
                SizedBox(height: 10.0),
                Container(
                    height: 30.0,
                    width: 95.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      shadowColor: Colors.greenAccent,
                      color: Colors.green,
                      elevation: 7.0,
                      child: GestureDetector(
                        onTap: () {},
                        child: Center(
                          child: Text(
                            'Edit Name',
                            style: TextStyle(
                                color: Colors.white, fontFamily: 'Montserrat'),
                          ),
                        ),
                      ),
                    )),
                SizedBox(height: 10.0),
                Container(
                    height: 30.0,
                    width: 95.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      shadowColor: Colors.red[900],
                      color: Colors.red[900],
                      elevation: 7.0,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(context, '/Login');
                        },
                        child: Center(
                          child: Text(
                            'Log out',
                            style: TextStyle(
                                color: Colors.white, fontFamily: 'Montserrat'),
                          ),
                        ),
                      ),
                    ))
              ]
          )
          );
        };
      },

    );
  }
}

        class getClipper extends CustomClipper<Path> {
          @override
          Path getClip(Size size) {
            var path = new Path();

            path.lineTo(0.0, size.height / 1.9);
            path.lineTo(size.width + 125, 0.0);
            path.close();
            return path;
          }

          @override
          bool shouldReclip(CustomClipper<Path> oldClipper) {
            // TODO: implement shouldReclip
            return true;
          }
        }
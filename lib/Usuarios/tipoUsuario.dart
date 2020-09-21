import 'package:flutter/material.dart';
import 'package:app_bloody/LoginPage.dart';

class tipoUsuario extends StatefulWidget {
  @override
  _tipoUsuarioState createState() => _tipoUsuarioState();
}

class _tipoUsuarioState extends State<tipoUsuario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(

          child: Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                  image: new AssetImage(""),
                  fit: BoxFit.cover
              ),
            ),

            margin: const EdgeInsets.only(top: 20),
            padding: EdgeInsets.symmetric(horizontal: 16),

            child: ListView(children: [
              Image.asset(
                'assets/images/logocolor.png',
                height: 150,
              ),
              Container(
                padding: const EdgeInsets.only(top: 30),
                child: Center(
                  child: Text(
                    'ELEGIR USUARIO',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
              ),





                    Container(

                      padding: EdgeInsets.only(top: 80),
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/rpunto');
                        },
                        child: new Text(
                          'Punto de donacion',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        color: Colors.grey[60],
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0)
                        ),
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/rdonador');
                        },
                        child: new Text(
                          'Donador',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        color: Colors.grey[60],
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0)
                        ),
                      ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.all(18.0),
                    ),


     ]     ),
        )),
        floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          Navigator.pushReplacementNamed(context, '/Login');
    },
    label: Text('Salir'),
    icon: Icon(Icons.arrow_back),
    backgroundColor: Colors.red,

    )
    );



  }
}

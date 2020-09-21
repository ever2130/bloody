import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class registropunto extends StatefulWidget {
  @override
  _registropuntoState createState() => _registropuntoState();
}

class _registropuntoState extends State<registropunto> {
  @override
  TextEditingController controllerUsername = new TextEditingController();
  TextEditingController controllerPassword = new TextEditingController();
  TextEditingController controllerEmail = new TextEditingController();
  TextEditingController controllerCel = new TextEditingController();
  TextEditingController controllerlevel = new TextEditingController();
  TextEditingController controllerid = new TextEditingController();
  TextEditingController controllerdir = new TextEditingController();
  TextEditingController controllerciudad = new TextEditingController();
  TextEditingController controllernombre = new TextEditingController();

  var _formKey = GlobalKey<FormState>();
  Future addDat() async{
    final response = await http.post("https://bdbloody.000webhostapp.com/adpuntodonacion.php",

        body: {
          "username": controllerUsername.text,
          "password": controllerPassword.text,
          "celular": controllerCel.text,
          "email": controllerEmail.text,
          "id": controllerid.text,
          "ciudad": controllerciudad.text,
          "direccion": controllerdir.text,
          "nombre": controllernombre.text,
        });


  }
  Future addData() async {
    final response= await http.post("https://bdbloody.000webhostapp.com/loginpd.php",

        body: {
          "username": controllerUsername.text,
          "password": controllerPassword.text,
          "celular": controllerCel.text,
          "email": controllerEmail.text,
          "level": controllerlevel.text,
          "id": controllerid.text,

          //"nivel": controllerNivel.text
        });

  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(


          margin: const EdgeInsets.only(top: 20),
          padding: EdgeInsets.symmetric(horizontal: 16),


          child: ListView(children: [
            Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextFormField(
                    controller: controllerUsername,
                    decoration: InputDecoration(
                      labelText: 'Crear usuario',
                    ))),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextFormField(
                  controller: controllerPassword,
                  decoration: InputDecoration(labelText: 'Crear contraseña'),
                  obscureText: true),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextFormField(
                  controller: controllerid,
                  decoration: InputDecoration(labelText: 'Crear Id'),
                  ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextFormField(
                controller: controllerEmail,
                decoration: InputDecoration(labelText: 'Registrar Email'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextFormField(
                controller: controllerCel,
                decoration: InputDecoration(labelText: 'Numero de telefono'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextFormField(
                controller: controllernombre,
                decoration: InputDecoration(labelText: 'Nombre'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextFormField(
                controller: controllerciudad,
                decoration: InputDecoration(labelText: 'Ciudad'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextFormField(
                controller: controllerdir,
                decoration: InputDecoration(labelText: 'Direccion'),
              ),
            ),

            Padding(
                padding: const EdgeInsets.only(top: 40),
                child: RaisedButton(
                  child: Text('Resgistrarte'),
                  color: Colors.grey[60],
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(15.0)
                  ),
                  onPressed: () {
                    addDat();
                    addData();
                    Navigator.pushReplacementNamed(context, '/Login');
                  },
                )),
            Padding(
                padding: const EdgeInsets.only(top: 5),
                child: RaisedButton(
                  child: Text('Volver'),
                  color: Colors.grey[60],
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(15.0)
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/tipo');
                  },
                ))

          ]),
        ),
      ),
    );
  }
}
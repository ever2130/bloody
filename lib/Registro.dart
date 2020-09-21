import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class Registro extends StatefulWidget {
  @override
  _RegistroState createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  @override
  TextEditingController controllerNombre = new TextEditingController();
  TextEditingController controllerApellido = new TextEditingController();
  TextEditingController controllerUsername = new TextEditingController();
  TextEditingController controllerPassword = new TextEditingController();
  TextEditingController controllerEmail = new TextEditingController();
  TextEditingController controllerCel = new TextEditingController();
  TextEditingController controllerlevel = new TextEditingController();
  TextEditingController controllerid = new TextEditingController();
  TextEditingController controllertipos = new TextEditingController();
  TextEditingController controlleredad = new TextEditingController();
  TextEditingController controllersexo = new TextEditingController();
  TextEditingController controllerhistoria = new TextEditingController();


  var _formKey = GlobalKey<FormState>();
  Future addDat() async{
    final response = await http.post("https://bdbloody.000webhostapp.com/adddonador.php",

        body: {
          "nombre": controllerNombre.text,
          "apellido": controllerApellido.text,
          "username": controllerUsername.text,
          "password": controllerPassword.text,
          "celular": controllerCel.text,
          "email": controllerEmail.text,
          "id": controllerid.text,
          "edad": controlleredad.text,
          "tipos": controllertipos.text,
          "sexo": controllersexo.text,
          "historia": controllerhistoria.text,
        });


  }


  Future addData() async {
    final response= await http.post("https://bdbloody.000webhostapp.com/logindonador.php",

    body: {
      "username": controllerUsername.text,
      "password": controllerPassword.text,
      "celular": controllerCel.text,
      "email": controllerEmail.text,
      "level": controllerlevel.text,
      "id": controllerid.text,
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
                    controller: controllerNombre,
                    decoration: InputDecoration(labelText: 'Nombre')),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextFormField(
                    controller: controllerApellido,
                    decoration: InputDecoration(labelText: 'Apellido')),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextFormField(
                    controller: controllerid,
                    decoration: InputDecoration(labelText: 'Id')),
              ),
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
                  controller: controlleredad,
                  decoration: InputDecoration(labelText: 'edad'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextFormField(
                  controller: controllertipos,
                  decoration: InputDecoration(labelText: 'Tipo de sangre'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextFormField(
                  controller: controllersexo,
                  decoration: InputDecoration(labelText: 'sexo'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextFormField(
                  controller: controllerhistoria,
                  decoration: InputDecoration(labelText: 'historia'),
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



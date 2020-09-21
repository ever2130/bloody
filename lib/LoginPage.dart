import 'dart:convert';
import 'package:app_bloody/Usuarios/InicioDonador.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;



String username;
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controllerUser = new TextEditingController();
  TextEditingController controllerPass = new TextEditingController();

  String mensaje = "";

  Future<List> login() async {

    final response = await http.post("https://bdbloody.000webhostapp.com/login.php", body: {
      "username": controllerUser.text,
      "password": controllerPass.text,
    });

    var datauser = json.decode(response.body);
    print(datauser.toString());

    if (datauser.length == 0) {
      setState(() {
        mensaje = "Parece que el usuario o contraseña que ingresate son incorrectos, intenta de nuevo";
      });
    } else {
      if (datauser[0]['level'] == 'admin') {
        Navigator.pushReplacementNamed(context, '/Admin');
      } else if (datauser[0]['level'] == 'donador') {
        Navigator.pushReplacementNamed(context, '/iniciod');
      } else if (datauser[0]['level'] == 'pdonacion') {
        Navigator.pushReplacementNamed(context, '/Pdonacion');
      }
      setState(() {
        username = datauser[0]['username'];

      });
    }
    return datauser;
  }



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
              Padding(
                  padding: const EdgeInsets.only(top:20),
                  child: TextFormField(
                    controller: controllerUser,
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.person,
                        color: Colors.red,
                      ),
                      labelText: 'Usuario',),
                    validator: (value)  => value.isEmpty ? 'Email no esta correcto': null,
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextFormField(
                    controller: controllerPass,
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.vpn_key,
                          color: Colors.red,
                        ),
                        labelText: 'Contraseña'),
                    validator: (value)  => value.isEmpty ? 'Password no esta bien': null,
                    obscureText: true),
              ),
              Container(
                width: 50,
                child: Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: RaisedButton(
                      onPressed: (){
                        login();
                      },
                      child: Text('Iniciar',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),),
                      color: Colors.grey[60],
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(15.0)
                      ),
                      // onPressed: validateAndSubmit
                    )),
              ),

              Padding(
                padding: EdgeInsets.only(top: 5),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/tipo');
                  },
                  child: new Text(
                    'Crear cuenta',
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
            ]),
          ),
        ));
  }


}
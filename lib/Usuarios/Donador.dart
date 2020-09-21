import 'package:flutter/material.dart';
import '../LoginPage.dart';

class Donador extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        child: Container(

          decoration: new BoxDecoration(
            image: new DecorationImage(
                image: new AssetImage("assets/images/FONDO1.jpeg"),
                fit: BoxFit.cover
            ),
          ),

          margin: const EdgeInsets.only(top: 20),
          padding: EdgeInsets.symmetric(horizontal: 16),

          child: ListView(children: [
            Padding(
              padding: const EdgeInsets.only(top: 120),
              child: Center(
                child: Text(
                  'Bienvenido donador $username',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 150),
                child: RaisedButton(
                  child: Text('Cerrar sesión'),
                  color: Colors.red[900],
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(15.0)
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/Login');
                  },
                ))

          ]),

        ),


      ),


    );
  }
}
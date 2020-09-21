import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class iniciopd extends StatefulWidget {
  @override
  _iniciopdState createState() => _iniciopdState();
}

class _iniciopdState extends State<iniciopd> {
  @override

  TextEditingController controllerTipo = new TextEditingController();
  TextEditingController controllerTiempo = new TextEditingController();

  Future addData() async {
    final response= await http.post("https://bdbloody.000webhostapp.com/alerta.php",

        body: {
          "tipo": controllerTipo.text,
          "tiempo": controllerTiempo.text,
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
              padding: const EdgeInsets.only(top: 10),
              child: Center(
                child: Text(
                  'Envie la alerta',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: TextFormField(
                controller: controllerTipo,
                decoration: InputDecoration(
                    labelText: 'Tipo de sangre'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextFormField(
                controller: controllerTiempo,
                decoration: InputDecoration(labelText: 'Tiempo'),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 50),
                child: RaisedButton(
                  onPressed: () {
                    addData();
                    Navigator.pushReplacementNamed(context, '/Pdonacion');
                  },
                  child: Text('Enviar'),
                  color: Colors.grey[60],
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(15.0)
                  ),

                )),
            Padding(
                padding: const EdgeInsets.only(top: 2),
                child: RaisedButton(
                  child: Text('Regresar'),
                  color: Colors.grey[60],
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(15.0)
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/Pdonacion');
                  },
                )),
            Container(

              child: Padding(
                padding: const EdgeInsets.all(8.0),
              ),
            )
          ]),
        ),


      ),


    );
  }
}

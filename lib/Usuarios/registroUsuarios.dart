import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AddData extends StatefulWidget {
  @override
  _AddDataState createState() => new _AddDataState();
}

class _AddDataState extends State<AddData> {
  TextEditingController controllerUsername = new TextEditingController();
  TextEditingController controllerPassword = new TextEditingController();
  TextEditingController controllerEmail = new TextEditingController();
  TextEditingController controllerCel = new TextEditingController();
  TextEditingController controllerlevel = new TextEditingController();

  var _formKey = GlobalKey<FormState>();

  Future addData() async {
    final response= await http.post("https://bdbloody.000webhostapp.com/adddata.php",
        body: {
      "username": controllerUsername.text,
      "password": controllerPassword.text,
      "email": controllerEmail.text,
      "celular": controllerCel,
      "level": controllerlevel, //aqui traemos el DropdownMenuItem lo llamamos _mySelection este es como el controller
      //"nivel": controllerNivel.text
    });
  }

  String _mySelection;
  List<Map> _myJson = [
    {"id": 0, "name": "puntod"},
    {"id": 1, "name": "donador"}
  ];
// miluin 4 piso
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: <Widget>[
              new Column(
                children: <Widget>[
                  new ListTile(
                    leading: const Icon(Icons.person, color: Colors.black),
                    title: new TextFormField(
                      controller: controllerUsername,
                      validator: (value) {
                        if (value.isEmpty) return "Ingresa un nombre de usuario";
                      },
                      decoration: new InputDecoration(
                        hintText: "Usuario",
                        labelText: "Usuario",
                      ),
                    ),
                  ),
                  new ListTile(
                    leading: const Icon(Icons.vpn_key, color: Colors.black),
                    title: new TextFormField(
                      obscureText: true,
                      controller: controllerPassword,
                      validator: (value) {
                        if (value.isEmpty) return "Ingresa una Contraseña";
                      },
                      decoration: new InputDecoration(
                        hintText: "Contraseña",
                        labelText: "Contraseña",
                      ),
                    ),
                  ),
                  new ListTile(
                    leading: const Icon(Icons.alternate_email, color: Colors.black),
                    title: new TextFormField(
                      controller: controllerEmail,
                      validator: (value) {
                        if (value.isEmpty) return "Ingresa un Email";
                      },
                      decoration: new InputDecoration(
                        hintText: "Email",
                        labelText: "Email",
                      ),
                    ),
                  ),
                  new ListTile(
                    leading: const Icon(Icons.phone_android, color: Colors.black),
                    title: new TextFormField(
                      controller: controllerCel,

                      decoration: new InputDecoration(
                        hintText: "Celular",
                        labelText: "Celular",
                      ),
                    ),
                  ),
                  new ListTile(
                    leading: const Icon(Icons.center_focus_strong, color: Colors.black),
                    title: new TextFormField(
                      controller: controllerCel,
                      decoration: new InputDecoration(
                        hintText: "Id",
                        labelText: "Id",
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      new Container(
                        margin: EdgeInsets.only(left: 20.0),
                        child: Icon(Icons.list),
                      ),
                      VerticalDivider(
                        width: 40.0,
                      ),
                      new Container(
                        //margin: EdgeInsets.only(right: 80.0),
                        height: 50.0,
                        width: 100.0,
                        child: new DropdownButton<String>(
                          isDense: true,
                          hint: new Text("Nivel"),
                          iconSize: 40.0,
                          elevation: 10,
                          value: _mySelection,
                          onChanged: (String newValue) {
                            setState(() {
                              _mySelection = newValue;
                            });
                            print(_mySelection);
                          },
                          items: _myJson.map((Map map) {
                            return new DropdownMenuItem<String>(
                              //value: map["id"].toString(),
                              value: map["name"].toString(),
                              child: new Text(
                                map["name"],
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                  new Padding(
                    padding: const EdgeInsets.all(30.0),
                  ),
                  new RaisedButton(
                    child: new Text("Agregar"),
                    color: Colors.grey[60],
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    onPressed: () {
                        addData();
                        Navigator.pushReplacementNamed(context, '/Admin');
                    },
                  ),
                  new RaisedButton(
                    child: new Text("Salir"),
                    color: Colors.grey[60],
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/Admin');
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

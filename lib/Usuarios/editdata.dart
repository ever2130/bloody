import 'package:app_bloody/Usuarios/Admi.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'listarUsuarios.dart';
import 'detail.dart';
import 'package:app_bloody/Registro.dart';


class EditData extends StatefulWidget {
  final List list;
  final int index;

  EditData({this.list, this.index});

  @override
  _EditDataState createState() => new _EditDataState();
}

class _EditDataState extends State<EditData> {

  TextEditingController controllerUsername;
  TextEditingController controllerPassword;
  TextEditingController controllerLevel;
  TextEditingController controllerCelular;
  TextEditingController controllerEmail;
  


  void editData() {
    var url="https://bdbloody.000webhostapp.com/editdata.php";
    http.post(url,body: {
      "id": widget.list[widget.index]['id'],
      "username": controllerUsername.text,
      "password": controllerPassword.text,
      "celular": controllerCelular.text,
      "email": controllerEmail.text,
      "level": controllerLevel.text
    });
  }


  @override
    void initState() {
      controllerUsername= new TextEditingController(text: widget.list[widget.index]['username'] );
      controllerPassword= new TextEditingController(text: widget.list[widget.index]['password'] );
      controllerLevel= new TextEditingController(text: widget.list[widget.index]['level'] );
      controllerCelular= new TextEditingController(text: widget.list[widget.index]['celular'] );
      controllerEmail= new TextEditingController(text: widget.list[widget.index]['email'] );
      super.initState();
    }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("EDITAR"),
      ),
      body: Form(       
          child: ListView(
            padding: const EdgeInsets.all(10.0),
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
                        hintText: "Usuario", labelText: "Usuario",
                      ),
                    ),
                  ),
                  new ListTile(
                    leading: const Icon(Icons.location_on, color: Colors.black),
                    title: new TextFormField(
                      controller: controllerPassword,
                          validator: (value) {
                            if (value.isEmpty) return "Ingresa una Contraseña";
                          },
                      decoration: new InputDecoration(
                        hintText: "Contraseña", labelText: "Contraseña",
                      ),
                    ),
                  ),
                  new ListTile(
                    leading: const Icon(Icons.location_on, color: Colors.black),
                    title: new TextFormField(
                      controller: controllerEmail,
                      validator: (value) {
                        if (value.isEmpty) return "Ingresa un correo";
                      },
                      decoration: new InputDecoration(
                        hintText: "Contraseña", labelText: "Correo",
                      ),
                    ),
                  ),
                  new ListTile(
                    leading: const Icon(Icons.location_on, color: Colors.black),
                    title: new TextFormField(
                      controller: controllerCelular,
                      validator: (value) {
                        if (value.isEmpty) return "Ingresa un numero de celular";
                      },
                      decoration: new InputDecoration(
                        hintText: "Contraseña", labelText: "Celular",
                      ),
                    ),
                  ),
                  new ListTile(
                    leading: const Icon(Icons.settings_input_component, color: Colors.black),
                    title: new TextFormField(
                      controller: controllerLevel,
                          validator: (value) {
                            if (value.isEmpty) return "Ingresa un Nivel";
                          },
                      decoration: new InputDecoration(
                        hintText: "Nivel", labelText: "Nivel",
                      ),
                    ),
                  ),
                  const Divider(
                    height: 1.0,
                  ),                 
                  new Padding(
                    padding: const EdgeInsets.all(10.0),
                  ),
                  new RaisedButton(
                    child: new Text("Guardar"),
                    color: Colors.red[900],
                    onPressed: () {
                      editData();
                      Navigator.of(context).push(
                        new MaterialPageRoute(
                          builder: (BuildContext context)=>new Admi()
                        )
                      );
                    },
                  )
                ],
              ),
            ],
          ),
      ),
    );
  }
}
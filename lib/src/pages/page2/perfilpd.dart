import 'package:flutter/material.dart';
import 'package:app_bloody/LoginPage.dart';

class perfilpd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Stack(
          children: <Widget>[
            ClipPath(
              child: Container(color: Colors.red[900].withOpacity(0.8)),
              clipper: getClipper(),
            ),
            Positioned(
                width: 350.0,
                top: MediaQuery.of(context).size.height / 13,
                child: Column(
                  children: <Widget>[
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
                    SizedBox(height: 50.0),
                    Text(
                      //'$nombre''$apellido'
                          'Bienvenido',
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'),
                    ),
                    SizedBox(height: 15.0),
                    Text(
                      '$username',
                      style: TextStyle(
                          fontSize: 17.0,
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
                                style: TextStyle(color: Colors.white, fontFamily: 'Montserrat'),
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
                                style: TextStyle(color: Colors.white, fontFamily: 'Montserrat'),
                              ),
                            ),
                          ),
                        ))
                  ],
                ))
          ],
        )
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
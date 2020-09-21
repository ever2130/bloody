import 'package:flutter/material.dart';

class inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
      child: ListView(children: [

        Image.asset(
          'assets/images/d1.jpeg',

        ),
        Image.asset(
          'assets/images/d2.jpeg',

        ),
        Image.asset(
          'assets/images/d3.jpeg',

        ),
        Image.asset(
          'assets/images/d4.jpeg',

        ),
        Image.asset(
          'assets/images/d5.jpeg',

        ),Image.asset(
          'assets/images/d6.jpeg',

        ),
      ]
      ),


      ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: (){
           Navigator.pushReplacementNamed(context, '/Maps');
           },
           label: Text('Puntos'),
           icon: Icon(Icons.info),
          backgroundColor: Colors.red,
           )
    );
  }
}

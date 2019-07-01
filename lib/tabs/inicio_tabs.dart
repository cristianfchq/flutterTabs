import 'package:flutter/material.dart';

class inicioTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          //agregamos imagen
          Container(
            //margin: const EdgeInsets.all(10.0),
            //width: 400,
            //height: 200,
            child: Center(
              child: Container(
                margin: const EdgeInsets.all(10.0),
                width: 400,
                height: 600,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/205.jpg'
                    ),
                  fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            
          ),
          //agregamos un botton con una accion
          Container(
            margin: EdgeInsets.only(
              top: 250.0,
              left: 50.0,
            ),
            child: RaisedButton(
              padding: EdgeInsets.only(
                top: 20.0,
                left: 100.0,
                right: 100.0,
                bottom: 20.0,
              ),
              textColor: Colors.white,
              color: Colors.blue,
              onPressed: (){
                Scaffold
                .of(context)
                .showSnackBar(SnackBar(content: Text('Estamos en el Tab Inicio'),));
              },
              child: Text("Presiona Aqui"),
            ),
          ),
        ],
      ),
    );
  }
}
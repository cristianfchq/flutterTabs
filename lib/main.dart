import 'package:flutter/material.dart';
import 'package:flutter_tabs/tabs/acercade_tabs.dart';
import 'package:flutter_tabs/tabs/inicio_tabs.dart';
import 'package:flutter_tabs/tabs/lugares_tabs.dart';
import 'package:flutter_tabs/tabs/resistro_tabs.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //creamos la variable TabController donde estaran todos nuestro tabs de navegacion
    final TabController = DefaultTabController(
      length: 4, //numero de los iconos o tabs de la barra
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Navegacion por Tabs',
          ),
          bottom: TabBar(
            indicatorColor: Colors.red,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.home),
                text: "Inicio",
              ),
              Tab(
                icon: Icon(Icons.contacts),
                text: "Registro",
              ),
              Tab(
                icon: Icon(Icons.place),
                text: "Lugares",
              ),
              Tab(
                icon: Icon(Icons.assignment_late),
                text: "Acerca de ...",
              ),
            ],
          ),
        ),
        //
        body: TabBarView(
          children: <Widget>[
            inicioTabs(),
            registroTabs(),
            lugaresTabs(),
            acercadeTabs(),
          ],
        ),
      ),
    );
    //
    return MaterialApp(
      title: 'Tabs con Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TabController,
    );
  }
}

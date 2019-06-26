import 'package:flutter/material.dart';

class registroTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro Cliente'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: (){},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.person),
            title: TextField(
              decoration: InputDecoration(
                hintText: "Nombre"
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.phone),
            title: TextField(
              decoration: InputDecoration(
                hintText: "Telefono"
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.email),
            title: TextField(
              decoration: InputDecoration(
                hintText: "Email"
              ),
            ),
          ),
          Divider(
            height: 1.0,
          ),
          ListTile(
            leading: const Icon(Icons.today),
            title: Text(
              'Cumpleaños',
            ),
            subtitle: const Text(
              'Marzo 17 de 2000',
            ),
          ),
          ListTile(
            leading: const Icon(Icons.group),
            title: Text(
              'Grupo Flutter',
            ),
            subtitle: Text(
              'Flutter.....',
            ),
          ),
        ],
      ),
    );
  }
}
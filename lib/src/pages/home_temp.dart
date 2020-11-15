import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  //const name({Key key}) : super(key: key);

  final opciones = ['1a', '2b', '3b', '4d', '5e', '6f', '7g'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('componentes-Theme'),
      ),
      // body: ListView(children: _crearItems()),
      body: ListView(children: _crearItemsCorta()),
    );
  }

  // List<Widget> _crearItems() {
    // List<Widget> lista = new List<Widget>();

    // for (String opt in opciones) {
    //   final tempWidget = ListTile(
    //     title: Text(opt),
    //   );
    //   lista
    //     ..add(tempWidget)
    //     ..add(Divider(
    //       color: Colors.deepOrange,
    //     ));
    // }

  //   return lista;
  // }

  List<Widget> _crearItemsCorta() {
    var widgets = opciones.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            onTap: () {
              print('no hay informacion en este item... ');
            },
            title: Text(item + '!'),
            subtitle: Text('information'),
            leading: Icon(Icons.adb_sharp),
            trailing: Icon(Icons.arrow_right),
          ),
          Divider(
            color: Colors.deepPurple,
          )
        ],
      );
    }).toList();
    return widgets;
  }
}

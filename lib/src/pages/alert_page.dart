import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina de alerta'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home_filled),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

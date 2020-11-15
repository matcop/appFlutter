import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2()
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
        elevation: 10.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(
                Icons.card_giftcard,
                color: Colors.greenAccent,
              ),
              title: Text('Puerta del Sol'),
              subtitle: Text(
                  'es una escultura monolítica en piedra andesita que en el pasado formó parte de otra estructura mayor, posiblemente ligada a Kalasasaya o Akapana.'),
            ),
            Row(
              children: [
                FlatButton(
                  child: Text('Cancelar'),
                  onPressed: () {},
                ),
                FlatButton(onPressed: () {}, child: Text('Ok'))
              ],
            )
          ],
        ));
  }

  Widget _cardTipo2() {
    final card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(
                'https://www.passporttheworld.com/wp-content/uploads/2020/06/Tiwanaku5-1024x814.jpg'),
            placeholder: AssetImage('assets/gato.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(padding: EdgeInsets.all(20.0), child: Text('Tiawanaku'))
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 5.0,
            offset: Offset(2.0, 10.0),
          )
        ],
        color: Colors.white,
      ),
      child: ClipRRect(
        //corta todo lo que esta fuera del contenedor.
        child: card,
        borderRadius: BorderRadius.circular(34.0),
      ),
    );
  }
}

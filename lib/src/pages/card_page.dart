import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text( 'Pagina Card' ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon ( Icons.add_location ),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
        ],
      ),
    );
  }

  _cardTipo1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon( Icons.photo_album, color: Colors.blue,),
            title: Text('Titulo de tarjeta'),
            subtitle: Text('ojawdojawodjawodjaowjdoaj aosjd lasljd asl l jdlsjdljwljdlwj sljdlsj lasjda   ljsdljsldjsdljalwfj lasjdaljfñalwjfñaljwñflj'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () { },
              )
            ],
          ),
        ],
      ),
    );
  }
}
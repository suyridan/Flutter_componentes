import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

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
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 20.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 20.0,),
        ],
      ),
    );
  }

  _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0) 
      ),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon( Icons.photo_album, color: Colors.blue,),
            title: Text('Titulo de tarjeta'),
            subtitle: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam vitae commodo tellus. Fusce tempor felis libero, ut bibendum ipsum volutpat id. Duis non mattis neque. Nunc tempor ex non efficitur consectetur. Aliquam ac fermentum velit. Integer faucibus egestas quam nec porta. Donec condimentum, justo quis viverra volutpat, urna nisl mollis tellus, at feugiat nulla enim a lorem. Quisque id velit a nisl auctor tincidunt ac in erat. Maecenas hendrerit vitae tortor a aliquam.'),
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

  Widget _cardTipo2() {
    
    final card = Container( 
      // clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[

          FadeInImage(
            image: NetworkImage('https://www.tom-archer.com/wp-content/uploads/2018/06/milford-sound-night-fine-art-photography-new-zealand.jpg'),
            placeholder: AssetImage( 'assets/jar-loading.gif' ),
            fadeInDuration: Duration( milliseconds: 200 ),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Texto de la imagen'),
          )
        ],
      ),
    );
  
  return Container(
    child: ClipRRect(
      child: card,
      borderRadius: BorderRadius.circular(30.0),
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.white,
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: Colors.black26,
          blurRadius: 10.0,
          spreadRadius: 2.0,
          offset: Offset(2.0, 10.0)
        )
      ]
      // color: Colors.red,
    ),
  );

  }
  
}
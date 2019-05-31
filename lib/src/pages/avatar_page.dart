import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina Avatar'),
        actions: <Widget>[

          Container(
            padding: EdgeInsets.all(1.0),
            child: CircleAvatar(
              radius: 26.0,
              backgroundImage: NetworkImage('https://www.cinepremiere.com.mx/wp-content/uploads/2018/07/stanleeanimado.jpg'),
            ),
          ),

          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon ( Icons.add_location ),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://i1.wp.com/noticieros.televisa.com/wp-content/uploads/2018/11/stan-lee-ap-archivo-1.png?resize=1045%2C602&quality=95&ssl=1'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _nombre = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hola'),
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20.0),
          children: <Widget>[
            _crearInput(),
            Divider(),
            _agregarPersona(),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon ( Icons.location_on ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter: Text('Letras ${ _nombre.length }'),
        hintText: 'Nombre de la persona',
        labelText: 'Nombre',
        helperText: 'Solo nombre',
        suffixIcon: Icon ( Icons.accessibility ),
        icon: Icon( Icons.account_circle ),
      ),
      onChanged: (valor) {
        setState(() {
          _nombre = valor;          
        });
      },
    );
  }


  Widget _agregarPersona() {
    return ListTile(
      title: Text('Nombre es: $_nombre'),
    );
  }
}
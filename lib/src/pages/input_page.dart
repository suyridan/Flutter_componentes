import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _nombre = '';
  String _email = '';
  String _password = '';
  String _fecha = '';

  TextEditingController _inputFielDateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inpus de texto'),
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20.0),
          children: <Widget>[
            _crearInput(),
            Divider(),
            _crearEmail(),
            Divider(),
            _crearPassword(),
            Divider(),
            _crearFecha( context ),
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

  Widget _crearEmail() {
    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Email',
        labelText: 'Email',
        suffixIcon: Icon ( Icons.alternate_email ),
        icon: Icon( Icons.email ),
      ),
      onChanged: (valor) {
        setState(() {
          _email = valor;          
        });
      },
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

  Widget _crearPassword() {
    return TextField(
      obscureText: true,
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Password',
        labelText: 'Password',
        suffixIcon: Icon ( Icons.lock ),
        icon: Icon( Icons.laptop_chromebook ),
      ),
      onChanged: (valor) {
        setState(() {
          _password = valor;          
        });
      },
    );
  }

  
  Widget _crearFecha( BuildContext context ){

    return TextField(
      controller: _inputFielDateController,
      enableInteractiveSelection: false,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Fecha de nacimiento',
        labelText: 'Fecha de nacimiento',
        suffixIcon: Icon ( Icons.calendar_today ),
        icon: Icon( Icons.perm_contact_calendar ),
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate( context );
      },
    );

  }

  _selectDate(BuildContext context) async {

    DateTime picked = await showDatePicker(
      context: context,
      firstDate: new DateTime(1994),
      initialDate: new DateTime.now(),
      lastDate: new DateTime.now(),
      locale: Locale('es')
    );

    if ( picked != null ) {
      setState(() {
        _fecha = picked.toString(); 
        _inputFielDateController.text = _fecha;
      });
    }

  }

  Widget _agregarPersona() {
    return ListTile(
      title: Text('Nombre es: $_nombre'),
      subtitle: Text('Email: $_email'),
    );
  }

}
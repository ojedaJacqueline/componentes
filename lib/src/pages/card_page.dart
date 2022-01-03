import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
      return Scaffold(
         appBar: AppBar( 
          title: Text('Cars'),
      ),
      body: ListView (
        padding:  EdgeInsets.all(20),
        children: <Widget> [
          _cardTipo1()
       ], 
      ),
    );
  }

    Widget _cardTipo1() {
      
       return Card( 
        child: Column(
          children : <Widget> [
            ListTile(
              leading: Icon(Icons.photo_album, color: Colors.blue),
              title: Text('Soy el titular de esta tarjeta'),
              subtitle: Text('aqui estamos con la descripcion'),
          ),
          Row( 
              
              children: <Widget>[
                FlatButton(
                   child: Text('Cancelar'),
                   onPressed: () {},
                 ),
                FlatButton(
                   child: Text('Ok'),
                   onPressed: () {},
                )
              ],
          )
        ],
      ),
    );
          
  }   
  
}
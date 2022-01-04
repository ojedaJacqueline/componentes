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
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2()

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
              mainAxisAlignment: MainAxisAlignment.end,
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

   Widget _cardTipo2() {

     return Card(
      child: Column(
        children: <Widget>[
          Image (
            image: NetworkImage('https://avivamientochaco.com/web/wp-content/uploads/2018/10/travel-landscape-01.jpg'),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
            child :Text('No tengo idea de que poner'))
         
          ],
        ),
      ); 
     

   }   
  
}
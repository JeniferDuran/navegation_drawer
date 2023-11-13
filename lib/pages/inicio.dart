import 'package:flutter/material.dart';

class Inicio extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Center(
      child:  Column(
        children: [
          Text('Jenifer Milena Duran Peña',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          Image.asset('images/polish.jpg'),
        ],
      ),

    );
  }
}
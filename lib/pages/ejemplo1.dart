import 'package:flutter/material.dart';

class Ejemplo1 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Center(
      child:  Column(
        children: [
          Text('Ejemplo1',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ],
      ),
    );
  }
}
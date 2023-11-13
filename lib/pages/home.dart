import 'package:flutter/material.dart';
import 'package:navegation_drawer/pages/ejemplo1.dart';
import 'package:navegation_drawer/pages/ejemplo2.dart';
import 'package:navegation_drawer/pages/ejemplo3.dart';
import 'package:navegation_drawer/pages/ejemplo4.dart';
import 'package:navegation_drawer/pages/ejemplo5.dart';
import 'package:navegation_drawer/pages/ejemplo6.dart';
import 'package:navegation_drawer/pages/ejemplo7.dart';
import 'package:navegation_drawer/pages/inicio.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _ItemDrawer = 0;
  _getDrawerItem(int position) {
    switch (position) {
      case 0:
        return Inicio();
      case 1:
        return Ejemplo1();
      case 2:
        return Ejemplo2();
      case 3:
        return Ejemplo3();
      case 4:
        return Ejemplo4();
      case 5:
        return Ejemplo5();
        case 6:
        return Ejemplo6();
        case 7:
        return Ejemplo7();
        
    }
  }

  void _onSelectItemDrawer(int pos) {
    Navigator.pop(context);
    setState(() {
      _ItemDrawer = pos;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navegation Drawer'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.redAccent,
              ),
              child: Text(
                'ITCA-FEPADE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.house),
              title: Text('home'),
              onTap: () {
                _onSelectItemDrawer(0);
              },
            ),

            Divider(color: Colors.black),

            //ListTile(
            // leading: Icon(Icons.arrow_forward_ios),
            // title: Text('Ejemplo1'),
            // onTap: (){
            // _onSelectItemDrawer(1);
            // },
            // ),
            ListTile(
              leading: Icon(Icons.arrow_forward_ios),
              title: Text('LinearProgressIndicator'),
              onTap: () {
                _onSelectItemDrawer(2);
              },
            ),
            ListTile(
              leading: Icon(Icons.arrow_forward_ios),
              title: Text('CircularProgressIndicator'),
              onTap: () {
                _onSelectItemDrawer(3);
              },
            ),
            ListTile(
              leading: Icon(Icons.arrow_forward_ios),
              title: Text('Ejemplo4'),
              onTap: () {
                _onSelectItemDrawer(4);
              },
            ),
            ListTile(
              leading: Icon(Icons.arrow_forward_ios),
              title: Text('Ejemplo5'),
              onTap: () {
                _onSelectItemDrawer(5);
              },
            ), ListTile(
              leading: Icon(Icons.arrow_forward_ios),
              title: Text('Ejemplo7'),
              onTap: () {
                _onSelectItemDrawer(7);
              },
            ),



            ListTile(
              leading: Icon(Icons.arrow_forward_ios),
              title: Text('Ejemplo6'),
              onTap: () {
                _onSelectItemDrawer(6);
              },
            ),
            
          ],
        ),
      ),
      body: _getDrawerItem(_ItemDrawer),
    );
  }
}

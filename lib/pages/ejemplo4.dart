import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Ejemplo4(),
    );
  }
}

class Ejemplo4 extends StatefulWidget {
  @override
  _Ejemplo4State createState() => _Ejemplo4State();
}

class _Ejemplo4State extends State<Ejemplo4> {
  bool _isLoading = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Circular Progress Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Presiona el botón para cargar datos:'),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    barrierDismissible:
                        true, // Impede que se cierre haciendo clic fuera del diálogo
                    builder: (BuildContext context) {
                      return StatefulBuilder(
                        builder: (BuildContext context, StateSetter setState) {
                          return Dialog(
                            child: Container(
                              height: 150,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  CircularProgressIndicator(
                                    value: _isLoading ? null : 1.0,
                                  ),
                                  SizedBox(height: 20),
                                  Text(
                                    _isLoading
                                        ? 'Cargando... '
                                        : 'Tarea exitosa',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                            ),
                          );
                          // Simula una operación de carga
                          Future.delayed(Duration(seconds: 3), () {
                            setState(() {
                              _isLoading = false;
                            });
                          });
                        },
                      );
                    },
                  );
                },
                child: Text('Cargar Datos'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

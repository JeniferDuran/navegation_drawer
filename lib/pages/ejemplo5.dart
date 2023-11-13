import 'package:flutter/material.dart';

void main() {
 runApp(MyApp());
}

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
    return MaterialApp(
      home: Ejemplo5(),
    );
 }
}

class Ejemplo5 extends StatefulWidget {
 @override
 _Ejemplo5State createState() => _Ejemplo5State();
}

class _Ejemplo5State extends State<Ejemplo5> {
 bool _isLoading = false;
 String _text = "";
 double _progress = 0.0;

  void simulateLoading() {
    setState(() {
      _isLoading = true;
      _text = "Cargando";
    });
    // Simula un proceso de carga, por ejemplo, una solicitud de red.
    for (int i = 0; i < 10; i++) {
      Future.delayed(Duration(seconds: 5), () {
        setState(() {
          _progress = (i + 1) * 0.1;
          _text = "Cargado: ${(_progress * 100).round()}%";
        });
      });
    }
  }

 @override
 Widget build(BuildContext context) {
    // Definición del estilo de texto personalizado
    final estiloTextoPersonalizado = TextStyle(
      fontSize: 25.0, // Tamaño del texto en píxeles
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('LinearProgressIndicator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (_isLoading)
              LinearProgressIndicator(
                value: _progress, // Mostrar el progreso en la barra
                valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
              ),
            SizedBox(height: 20.0),
            Text(
              _text,
              style:
                 estiloTextoPersonalizado, // Asignación del estilo personalizado
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                simulateLoading();
              },
              child: Text('Iniciar carga'),
            ),
          ],
        ),
      ),
    );
 }
}
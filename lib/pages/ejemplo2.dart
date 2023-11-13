import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Ejemplo2(),
    );
  }
}

class Ejemplo2 extends StatefulWidget {
  @override
  _Ejemplo2State createState() => _Ejemplo2State();
}

class _Ejemplo2State extends State<Ejemplo2> {
  bool _isLoading = false;
  String _text = "";

  void simulateLoading() {
    setState(() {
      _isLoading = true;
      _text = "Cargando";
    });
    // Simula un proceso de carga, por ejemplo, una solicitud de red.
    Future.delayed(Duration(seconds: 10), () {
      setState(() {
        _isLoading = false;
        _text = "Tarea exitosa";
      });
    });
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

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Ejemplo3(),
    );
  }
}

class Ejemplo3 extends StatefulWidget {
  @override
  _Ejemplo3State createState() => _Ejemplo3State();
}

class _Ejemplo3State extends State<Ejemplo3> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    // Simular una tarea de carga (por ejemplo, una solicitud a un servidor) durante 4 segundos.
    Future.delayed(Duration(seconds: 8), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CircularProgressIndicator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Por favor, espere...',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 10),
            _isLoading
                ? CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                        Color.fromARGB(255, 33, 131, 243)),
                    strokeWidth: 6.5,
                  )
                : Text(
                    'Carga completada',
                    style: TextStyle(fontSize: 25, color: Colors.green),
                  ),
          ],
        ),
      ),
    );
  }
}

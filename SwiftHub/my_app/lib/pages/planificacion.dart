import 'package:flutter/material.dart';
import 'package:my_app/pages/quehacer.dart';

void main() {
  runApp(planificacion());
}

class planificacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF003E75), // fondo de todo
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue, // fondo del titulo
          title: Text('¿Qué vamos a planificar?'),
          centerTitle: true,
        ),
        body: Center( // Centro todo el contenido
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, 
            crossAxisAlignment: CrossAxisAlignment.center, 
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(20.0),
                child: const Text(
                  'Selecciona una opción:',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
              ElevatedButtonTheme(
                data: ElevatedButtonThemeData(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0x4B0F62),
                    padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 10),
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      ElevatedButton(onPressed: () {}, child: Text('Fiestas')),
                      SizedBox(height: 35.0),
                      ElevatedButton(onPressed: () {}, child: Text('Viajes')),
                      SizedBox(height: 35.0),
                      ElevatedButton(onPressed: () {}, child: Text('Reuniones')),
                      SizedBox(height: 35.0),
                      ElevatedButton(onPressed: () {}, child: Text('Eventos')),
                      SizedBox(height: 35.0),
                      ElevatedButton(onPressed: () {}, child: Text('Paseos')),
                      SizedBox(height: 35.0),
                      ElevatedButton(onPressed: () {}, child: Text('Otros')),
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                        context,
                          MaterialPageRoute(builder: (context) => quehacer()), 
                      );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  textStyle: const TextStyle(
                    fontSize: 20,
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                ),
                child: const Text('Siguiente'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
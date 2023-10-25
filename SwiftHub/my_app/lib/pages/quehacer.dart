import 'package:flutter/material.dart';
import 'package:my_app/pages/notas.dart';

void main() {
  runApp(quehacer());
}

class quehacer extends StatelessWidget {
  const quehacer ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF003E75),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue, 
          title: const Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.home),
                SizedBox(width: 8), 
                Text('¿Qué haremos hoy?'),
              ],
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                        context,
                          MaterialPageRoute(builder: (context) => notas()), 
                      );
                },
                child: Text('Siguiente'),
              ),

              Image.asset(
                'assets/images/calendario.png',
                width: 500,
                height: 500,
                fit: BoxFit.contain,
              ),
            ],
          ) 
          ),
      ),
    );
  }
}
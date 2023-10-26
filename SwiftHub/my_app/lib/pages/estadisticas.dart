import 'package:flutter/material.dart';

class EstadisPage extends StatelessWidget {
  const EstadisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Estadísticas'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/grafico1.JPG'), 
            Image.asset('assets/images/grafico2.JPG'), 
            Image.asset('assets/images/grafico3.JPG'), 
          ],
        ),
      ),
    );
  }
}
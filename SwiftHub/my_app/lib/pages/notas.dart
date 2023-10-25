import 'package:flutter/material.dart';

void main() {
  runApp(notas());
}

class notas extends StatelessWidget {
  const notas ({super.key});

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
                Text('¿Qué haremos ese día?'),
              ],
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildNoteCard("Martes 18"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNoteCard(String title) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: const EdgeInsets.all(16.0),
      width: 300,
      height: 400,
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              hintText: 'Escribe tus notas aquí',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            maxLines: 10,
          ),
        ],
      ),
    );
  }
}
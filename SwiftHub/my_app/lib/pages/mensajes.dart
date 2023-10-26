import 'package:flutter/material.dart';
import 'package:my_app/pages/contactos.dart';
import 'package:my_app/pages/planificacion.dart';
import 'package:my_app/pages/quehacer.dart';


void main() => runApp(const MySms());

class MySms extends StatelessWidget {
  const MySms({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SmsApp (),
    );
  }
}


class SmsApp extends StatelessWidget {
  const SmsApp ({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
  
      appBar: AppBar(//barra superior
        
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
            context,
                  MaterialPageRoute(builder: (context) => planificacion()),
            );     
                 },
        ),
        title: const Text('Mensajes'),
        //title: TextField(
        //  decoration: InputDecoration(
          //  hintText: 'Buscar...',
          //border: InputBorder.none,
        // ),
        //  ),
        actions: [
          IconButton(
            icon: Icon(Icons.add_comment_outlined),
            onPressed: () {
              // Acciones para mensajes
            },
          ),
          IconButton(
            icon: Icon(Icons.mark_as_unread_rounded),
            onPressed: () {
              // Acciones para conversaciones
            },
          ),
          IconButton(
            icon: Icon(Icons.supervised_user_circle),
            onPressed: () {
               Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Contactos()),
                );
            },
          ),
        ],
      ),
      //body:Column(
        //children:[
          //Padding(
            //padding: const EdgeInsets.all(8.0),
            //
            //child: 
              
              //TextField( 
              //decoration: const InputDecoration(
               // hintText: 'Buscar...',
                //),
                //onChanged: (text) {
                // Barra de busqueda limitada
                //},
              //),
            //),
          //],
      //)
      body: ListView(
        children: List.generate(
          10,
          (index) => Container(
            padding: EdgeInsets.all(8.0),
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: ListTile(
              title: Text('Mensaje $index'),
              subtitle: Text('Contenido del mensaje $index'),
            ),
          ),
        )
      )
    );
  }
}  
import 'package:flutter/material.dart';
import 'package:my_app/pages/contactos.dart';
import 'package:my_app/pages/gps_ubi.dart';
import 'package:my_app/pages/noti.dart';
import 'package:my_app/pages/planificacion.dart';
import 'package:my_app/pages/profile_page.dart';

class MySms extends StatelessWidget {
  const MySms({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    debugShowCheckedModeBanner: false,
      home: SmsApp (),
    );
  }
}


class SmsApp extends StatelessWidget {
  const SmsApp ({super.key});

  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
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
      ),
      bottomNavigationBar: BottomNavigationBar(
           currentIndex: _currentIndex,
  onTap: (int index) {
    setState(() {
      _currentIndex = index;
    });
    // Agrega lógica de navegación aquí, basada en el valor de 'index'
    switch (index) {
      case 0:
        // Navegar a la vista de "Inicio"
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => planificacion()));
        break;
      case 1:
        // Navegar a la vista de "Mensajes"
         Navigator.of(context).push(MaterialPageRoute(builder: (context) => MySms()));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => NotiFica()));
        break;
      case 3:
        // Navegar a la vista de "Ubicación"
         Navigator.of(context).push(MaterialPageRoute(builder: (context) => UbiMap()));
        break;
      case 4:
        // Navegar a la vista de "Perfil"
         Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfilePage()));
        break;
    }
  },
        items: [
           BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
           BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.message),
            label: 'Mensajes',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.notification_add),
            label: 'Notificacion',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.location_on),
            label: 'Ubicacion',
          ),
         
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
           
        ],
      ),
    );
  }
}  
void setState(Null Function() param0) {}

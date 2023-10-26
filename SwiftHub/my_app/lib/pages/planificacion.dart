import 'package:flutter/material.dart';
import 'package:my_app/pages/gps_ubi.dart';
import 'package:my_app/pages/mensajes.dart';
import 'package:my_app/pages/noti.dart';
import 'package:my_app/pages/profile_page.dart';
import 'package:my_app/pages/quehacer.dart';


void main() {
  runApp(planificacion());
}

class planificacion extends StatelessWidget {
  int _currentIndex = 0;
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
      ),
    );
  }
  
  void setState(Null Function() param0) {}
}
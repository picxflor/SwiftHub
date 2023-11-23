import 'package:flutter/material.dart';
import 'package:my_app/pages/gps_ubi.dart';
import 'package:my_app/pages/map.dart';
import 'package:my_app/pages/mensajes.dart';
import 'package:my_app/pages/planificacion.dart';
import 'package:my_app/pages/profile_page.dart';


class NotiFica extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notificaciones',
      debugShowCheckedModeBanner: false,
      home: NotificationScreen(),
    );
  }
}

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;

    return Scaffold(
      appBar: AppBar(
      leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => planificacion()),
                );
          },
        ),
        title: Text('Notificaciones'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NotificationItem(
            icon: Icons.access_alarm,
            text: 'Te faltan 4 días para...',
          ),
          NotificationItem(
            icon: Icons.sentiment_satisfied,
            text: '¡Alítate! Ya casi es...',
          ),
          NotificationItem(
            icon: Icons.flight_takeoff,
            text: 'Tu viaje comienza en...',
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 20.0),
            child: Text(
              '¡No hay más notificaciones!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ),
        ],
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
         Navigator.of(context).push(MaterialPageRoute(builder: (context) => Mapdapi()));
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


class NotificationItem extends StatelessWidget {
  final IconData icon;
  final String text;

  NotificationItem({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Row(
          children: [
            Icon(icon),
            SizedBox(width: 10.0),
            Expanded(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

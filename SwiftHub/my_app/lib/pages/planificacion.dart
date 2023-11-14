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
        scaffoldBackgroundColor: Color(0x0000), // fondo de todo
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue, // fondo del titulo
          title: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.green],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Text(
              '¿Qué vamos a planificar?',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                shadows: [
                  Shadow(
                    color: Colors.black,
                    blurRadius: 2,
                    offset: Offset(1, 1),
                  ),
                ],
              ),
            ),
          ),
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
                    backgroundColor: Color(0xEADE72),
                    padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 10),
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(236, 67, 33, 1.0),
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          maximumSize: Size(200, double.infinity), // Ajusta el ancho máximo según tus necesidades
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.party_mode),
                            const SizedBox(width: 8.0),
                            Text('Fiestas'),
                          ],
                        ),
                      ),
                      SizedBox(height: 35.0),

                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(252, 153, 34, 1.0),
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          maximumSize: Size(200, double.infinity), // Ajusta el ancho máximo según tus necesidades
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.place_rounded),
                            const SizedBox(width: 8.0),
                            Text('Viajes'),
                          ],
                        ),
                      ),
                      SizedBox(height: 35.0),

                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(82, 218, 61, 1.0),
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          maximumSize: Size(200, double.infinity), // Ajusta el ancho máximo según tus necesidades
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.meeting_room),
                            const SizedBox(width: 8.0),
                            Text('Reuniones'),
                          ],
                        ),
                      ),
                      SizedBox(height: 35.0),

                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(65, 194, 194, 1.0),
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          maximumSize: Size(200, double.infinity), // Ajusta el ancho máximo según tus necesidades
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.event_busy),
                            const SizedBox(width: 8.0),
                            Text('Eventos'),
                          ],
                        ),
                      ),
                      SizedBox(height: 35.0),

                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(206, 134, 221, 1.0),
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          maximumSize: Size(200, double.infinity), // Ajusta el ancho máximo según tus necesidades
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.directions_walk),
                            const SizedBox(width: 8.0),
                            Text('Paseos'),
                          ],
                        ),
                      ),
                      SizedBox(height: 35.0),

                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(113, 132, 211, 1.0),
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          maximumSize: Size(200, double.infinity), // Ajusta el ancho máximo según tus necesidades
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.more),
                            const SizedBox(width: 8.0),
                            Text('Otros'),
                          ],
                        ),
                      ),
                      SizedBox(height: 35.0),
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
                  backgroundColor: Color.fromRGBO(197, 203, 57, 1.0),
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
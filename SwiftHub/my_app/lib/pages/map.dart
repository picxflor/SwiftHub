// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:my_app/pages/mensajes.dart';
import 'package:my_app/pages/noti.dart';
import 'package:my_app/pages/planificacion.dart';
import 'package:my_app/pages/profile_page.dart';

const MAPBOX_ACCESS_TOKEN = 'pk.eyJ1IjoiZnJhbmtkdXgiLCJhIjoiY2xwN3JxemlmMDdmMzJpb3FpOWdtM3o4dSJ9.dUcLBrRuLJhPp5Pgo_H5hQ';

final myPosition = LatLng(-12.144430, -76.988987);


class Mapdapi extends StatelessWidget {

  const Mapdapi({super.key});
  

  @override
  Widget build(BuildContext context) {
  int _currentIndex = 0;

    return Scaffold(
      
      appBar: AppBar(
        centerTitle: true,
        title: Text("Mapa para Eventos"),
        
        
      ),
      
      body: FlutterMap(
        
        options: MapOptions(
          center: myPosition,
          minZoom: 5,
          maxZoom: 25,
          zoom: 18,

        ),
        nonRotatedChildren : [
          TileLayer(
            urlTemplate: 'https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}',
            additionalOptions: const {
            'accessToken' : MAPBOX_ACCESS_TOKEN,
            'id' : 'mapbox/streets-v12'
            /*mappbox/streets-v12 es para un mapa con vista de planos dibujados mappbox/dark-v11 modo oscuro mappbox/light-v11 modo claro mappbox/satellite-v9 para vista satelite*/ 
            },
          ),
          MarkerLayer(
            markers: [
              Marker(point: myPosition, child: const Icon(Icons.person_pin_circle, 
              color: Colors.blue,
              size: 40,)
              )
            ],
          )
        ], 
        children: [ ],
        
        
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
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => planificacion()));
                break;
              case 1:
                // Navegar a la vista de "Mensajes"
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => MySms()));
                break;
              case 2:
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => NotiFica()));
                break;
              case 3:
                // Navegar a la vista de "Ubicación"
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Mapdapi()));
                break;
              case 4:
                // Navegar a la vista de "Perfil"
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ProfilePage()));
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
  void setState(Null Function() param0) {}

}
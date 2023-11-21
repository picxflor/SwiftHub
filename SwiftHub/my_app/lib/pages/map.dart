// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

const MAPBOX_ACCESS_TOKEN = 'pk.eyJ1IjoiZnJhbmtkdXgiLCJhIjoiY2xwN3JxemlmMDdmMzJpb3FpOWdtM3o4dSJ9.dUcLBrRuLJhPp5Pgo_H5hQ';

final myPosition = LatLng(-12.144430, -76.988987);


class Mapdapi extends StatelessWidget {
  const Mapdapi({super.key});

  @override
  Widget build(BuildContext context) {
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
            'id' : 'mapbox/satellite-v9'
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
        children: [],
      )
    );
  }
}
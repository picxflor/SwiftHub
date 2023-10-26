import 'package:flutter/material.dart';


class ConfigPage extends StatelessWidget {
  const ConfigPage( {super.key});
  

  @override
  Widget build(BuildContext context) {
  
       return Scaffold(
      appBar: AppBar(
        title: Text('Configuración'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Cambiar Idioma'),
            onTap: () {
              showDialog(
              context: context,
              builder: (context){
                return AlertDialog(
                  title: Text('Seleccionar idioma',textAlign: TextAlign.center,),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Español'),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Container( 
                          margin: EdgeInsets.all(10),
                          child: Text('Inglés'),),
                         
                      )
                    ],
                  ),
                );
              });
            },
          ),
          ListTile(
            title: Text('Notificaciones'),
            trailing: Switch(
              value:true , // Coloca el valor actual aquí
              onChanged: (value) {
               
              },
            ),
          ),
        
          ListTile(
            title: Text('Vibración'),
            trailing: Switch(
              value: true, // Coloca el valor actual aquí
              onChanged: (value) {
                // Implementa la lógica para activar/desactivar la vibración.
              },
            ),
          ),
          ListTile(
            title: Text('Sonido'),
            trailing: Switch(
              value: true, // Coloca el valor actual aquí
              onChanged: (value) {
                // Implementa la lógica para activar/desactivar el sonido.
              },
            ),
          ),
           ListTile(
            title: Text('Salir'),
            
           onTap: () {
              showDialog(
              context: context,
              builder: (context){
                return AlertDialog(
                  title: Text('Cerrar Sesión',textAlign: TextAlign.center,),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Si'),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Container( 
                          margin: EdgeInsets.all(10),
                          child: Text('No'),),
                         
                      )
                    ],
                  ),
                );
              });
            },
            leading: Icon(Icons.exit_to_app),
          ),
           
         
    
        ],
      ),
    );
  }
}
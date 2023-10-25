import 'package:flutter/material.dart';

class PerfilUsuario extends StatelessWidget {
  const PerfilUsuario({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 4, 44, 77),
        title: Text('Mi Perfil'),
      ),
       body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/images/perfil.JPG'),
                  ),
                  Text(
                    'Anderson Huaman',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(margin: EdgeInsets.all(30)),
                   ElevatedButton(
                onPressed: () {
                  // Lógica cuando se presiona el botón Logrados
                  
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  fixedSize: Size( 300,75 ),
                   // Color de fondo personalizado para Logrados
                ),
                child: Row(
                  children: [
                    Icon(Icons.check),
                    Text('Logrados'),
                  ],
                ),
              
                   ),
                    ElevatedButton(
                onPressed: () {
                  // Lógica cuando se presiona el botón Logrados
                  
                },
                style: ElevatedButton.styleFrom(
                  
                  fixedSize: Size( 300,75 ),
                  backgroundColor: Colors.red, // Color de fondo personalizado para Logrados
                ),
                child: Row(
                  children: [
                    Icon(Icons.clear),
                    Text('Pendientes'),
                  ],
                ),
                   ),
                    ElevatedButton(
                onPressed: () {
                  // Lógica cuando se presiona el botón Logrados
                  
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: Size( 300,75 ) ,
                  backgroundColor: Colors.yellow, // Color de fondo personalizado para Logrados
                ),
                child: Row(
                  children: [
                    Icon(Icons.star),
                    Text('Importantes'),
                  ],
                ),
                   ),
                    ElevatedButton(
                onPressed: () {
                  // Lógica cuando se presiona el botón Logrados
                  
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: Size( 300,75 ),
                  backgroundColor: Colors.purple, // Color de fondo personalizado para Logrados
                ),
                child: Row(
                  children: [
                    Icon(Icons.bar_chart),
                    Text('Estadisticas'),
                  ],
                ),
                   ),
                    ElevatedButton(
                onPressed: () {
                  // Lógica cuando se presiona el botón Logrados
                  
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: Size( 300,75 ),
                  backgroundColor: Colors.black, // Color de fondo personalizado para Logrados
                ),
                child: Row(
                  children: [
                    Icon(Icons.settings),
                    Text('Configuraciones'),
                  ],
                ),
                   ),
                ],
            ),
            ),
          ],
        )
      ),
      bottomNavigationBar: BottomNavigationBar(
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
 void mostrarMensaje(BuildContext context,String mensaje) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Mensaje'),
          content: Text(mensaje),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cerrar'),
            ),
          ],
        );
      },
    );
  }



class ProfileButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback? onPressed;
  final Color buttonColor;

  ProfileButton({
    required this.label,
    required this.icon,
    this.onPressed,
    this.buttonColor = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon),
      label: Text(label),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(buttonColor)
      ),
    );
  }
}

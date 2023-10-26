import 'package:flutter/material.dart';
import 'package:my_app/pages/configuraciones.dart';
import 'package:my_app/pages/estadisticas.dart';
import 'package:my_app/pages/importantes.dart';
import 'package:my_app/pages/logrados.dart';
import 'package:my_app/pages/pendientes.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 31, 135, 219),
        title: Text('Mi Perfil'),
      ),
       body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                  Container(
                    child: Row(
                       children:[ CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/images/perfil.JPG'),
                  ),
                  Container(margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                     child: Text(
                    'Anderson Huaman',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  )
                 
                       ],
                    ),
                      
                  ),
                 
                  Container(margin: EdgeInsets.all(15)),
                  Container(
                    margin: EdgeInsets.all(10),//Margen del primero boton
                    child: ElevatedButton(onPressed: (){
                       Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LogradosPage()));
                    
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      fixedSize: Size(300, 75),
                      shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          )
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.check),
                        Text('Logrados'),
                         Container(
              margin: EdgeInsets.fromLTRB(160, 0, 0, 0),
              child: 
                Icon(Icons.arrow_right),
                
            )
                      ],
                    ),
                    ),
                  ),
                   Container(
      margin: EdgeInsets.all(10), // Margin of 20 for the second button
      child: ElevatedButton(
        onPressed: () {
            Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PendientesPage()));
        },
        style: ElevatedButton.styleFrom(
          fixedSize: Size(300, 75),
          backgroundColor: Colors.red,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          )
        ),
        child: Row(
          children: [
            Icon(Icons.clear),
            Text('Pendientes'),
             Container(
              margin: EdgeInsets.fromLTRB(145, 0, 0, 0),
              child: 
                Icon(Icons.arrow_right),
                
            )
          ],
        ),
      ),
    ),
    Container(
      margin: EdgeInsets.all(10), // Margin of 20 for the third button
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ImportantesPage()));
        },
        style: ElevatedButton.styleFrom(
          fixedSize: Size(300, 75),
          backgroundColor: Colors.yellow,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          )
        ),
        child: Row(
          children: [
            Icon(Icons.star),
            Text('Importantes'),
             Container(
              margin: EdgeInsets.fromLTRB(140, 0, 0, 0),
              child: 
                Icon(Icons.arrow_right),
                
            )
          ],
        ),
      ),
    ),
    Container(
      margin: EdgeInsets.all(10), // Margin of 20 for the fourth button
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EstadisPage()));
        },
        style: ElevatedButton.styleFrom(
          fixedSize: Size(300, 75),
          backgroundColor: Colors.purple,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          )
        ),
        child: Row(
          children: [
            Icon(Icons.bar_chart),
            Text('Estadisticas'),
             Container(
              margin: EdgeInsets.fromLTRB(140, 0, 0, 0),
              child: 
                Icon(Icons.arrow_right),
                
            )
          ],
        ),
      ),
    ),
    Container(
      
      margin: EdgeInsets.all(10), // Margin of 20 for the fifth button
      child: ElevatedButton(
        onPressed: () {
         Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ConfigPage()));
        },
        style: ElevatedButton.styleFrom(
          fixedSize: Size(300, 75),
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          )
        ),
        child: Row(
          children: [
            Icon(Icons.settings),
            Text('Configuraciones'),
            Container(
              margin: EdgeInsets.fromLTRB(115, 0, 0, 0),
              child: 
                Icon(Icons.arrow_right),
                
            )
            
          ],
        ),
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
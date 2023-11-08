import 'package:flutter/material.dart';
import 'package:my_app/pages/contactos.dart';
import 'package:my_app/pages/gps_ubi.dart';
import 'package:my_app/pages/noti.dart';
import 'package:my_app/pages/planificacion.dart';
import 'package:my_app/pages/profile_page.dart';
import 'package:my_app/pages/cod_chatint.dart';

class MySms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MessagesScreen(),
    );
  }
}

class MessagesScreen extends StatelessWidget {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
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
        title: Text('Mensajes'),
        actions: [
          IconButton(
            icon: Icon(Icons.add_comment_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.mark_as_unread_rounded),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.person_add_alt_1),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Contactos()),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Buscar...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                chatBox(
                    'Miguel Angel',
                    'Cuando empezará?',
                    'data:image/jpeg;base64,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',
                    context),
                chatBox(
                    'Animador',
                    'Llego a las 7pm',
                    'data:image/jpeg;base64,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',
                    context),
                chatBox(
                    'Cantante',
                    'Mándame la lista de canciones',
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTox7hAniOTx10qq-fp2FfY6oYP_J6mYZ1JUg&usqp=CAU',
                    context),
                chatBox(
                    'Seguridad',
                    'Puntual como siempre, manito',
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHLb57M-I_mqT3tim56YMGBBRAZ8dqc48pzCng6_vU4_Z9gpKGwWyLTMqsqmrBqMH8pWY&usqp=CAU',
                    context),
                chatBox(
                    'Arturo Cajas',
                    'Ya llega tu pedido',
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgXa7NP-KQHU1jTyq1SIBG3VRMDD2nuSA3Ew&usqp=CAU',
                    context),
                chatBox(
                    'Paola Calte',
                    'Okey',
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKDxKmWqpgarvJFVDYJ70aUakrM4NSgBed7Q&usqp=CAU',
                    context),
                chatBox(
                    'Pecas',
                    'A qué hora inicia',
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHPT0nsjqNMhu3Tmpf8iPbYiJpTJ0-fpr2rw&usqp=CAU',
                    context),
              ],
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
                  .push(MaterialPageRoute(builder: (context) => UbiMap()));
              break;
            case 4:
              // Navegar a la vista de "Perfil"
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => ProfilePage()));
              break;
          }
        },
        items: const [
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

  Widget chatBox(
      String name, String text, String imageUrl, BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ChatInter(name, text, imageUrl)),
        );
      },
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(text),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(const Contactos());

class Contactos extends StatelessWidget {
  const Contactos({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ContactPage(),
    );
  }
}


class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  List<String> contacts = [
    'Juan Perez',
    'Maria Garcia',
    'Luis Hernandez',
    'Ana Lopez',
    'Carlos Martinez',
    'Sofia Rodriguez',
    'Pedro Chavez',
    'Laura Sanchez',
    'Oscar Ramirez',
    'Elena Flores',
  ];

  List<String> filteredContacts = [];

  @override
  void initState() {
    filteredContacts = contacts;
    super.initState();
  }

  void filterContacts(String query) {
    setState(() {
      filteredContacts = contacts
          .where((contact) =>
              contact.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Este es el boton de regresar
          },
        ),
        title: const Text('Contactos'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
            keyboardType: TextInputType.number, // Configura el teclado para que 
              onChanged: (value) => filterContacts(value),
              decoration: const InputDecoration(
                labelText: 'Buscar contacto',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredContacts.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(filteredContacts[index]),
                  onTap: () {
                  },
                );
              },
            ),
          ),
        ],
      
      ),
      
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
        },
        label: const Text('Llamar'),
        icon: const Icon(Icons.phone),
        backgroundColor: Colors.green,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,//posision del boton
    );
  }
}

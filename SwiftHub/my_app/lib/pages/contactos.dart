import 'package:flutter/material.dart';
import 'package:my_app/pages/add_contact.dart';
import 'package:my_app/pages/mensajes.dart'; 

class Contactos extends StatelessWidget {
  const Contactos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ContactPage(),
    );
  }
}


class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override

  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  List<Map<String, String>> contacts = [
    {'name': 'Juan Perez', 'phone': '985712456'},
    {'name': 'Nataly Carrasco', 'phone': '978452156'},
    {'name': 'Luis Hernandez', 'phone': '978127892'},
    {'name': 'Ana Lopez', 'phone': '945567893'},
    {'name': 'Carlos Martinez', 'phone': '978128524'},
    {'name': 'Sofia Rodriguez', 'phone': '981547895'},
    {'name': 'Pedro Chavez', 'phone': '998155215'},
    {'name': 'Laura Sanchez', 'phone': '981212789'},
    {'name': 'Oscar Ramirez', 'phone': '945867898'},
    {'name': 'Elena Flores', 'phone': '921567899'},
    {'name': 'Lucas Condori', 'phone': '933141106'},
    {'name': 'Gabiela Conde', 'phone': '911235708'},

  ];

  List<Map<String, String>> filteredContacts = [];

  @override
  void initState() {
    filteredContacts = contacts;
    super.initState();
  }
  
   void filterContacts(String query) {
    setState(() {
      filteredContacts = contacts
          .where((contact) =>
              contact['name']!.toLowerCase().contains(query.toLowerCase()) ||
              contact['phone']!.contains(query))
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
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MySms()), 
          );
          },
        ),
        title: const Text('Contactos'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
            keyboardType: TextInputType.number, 
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
                  title: Text(filteredContacts[index]['name']!),
                  subtitle: Text(filteredContacts[index]['phone']!),
                  onTap: () {},
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  add_contact()), 
          );
          },
        label: const Text('Añadir'),
        icon: const Icon(Icons.group_add_outlined),
        backgroundColor: Colors.blue,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,//posision del boton
      
    );
  }
}

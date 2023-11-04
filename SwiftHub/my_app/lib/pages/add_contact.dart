import 'package:flutter/material.dart';
import 'package:my_app/pages/contactos.dart';


class add_contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Add Contact',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AddContactScreen(),
    );
  }
}

class AddContactScreen extends StatefulWidget {
  @override
  _AddContactScreenState createState() => _AddContactScreenState();
}

class _AddContactScreenState extends State<AddContactScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();

  void _addContact() {
    String name = _nameController.text;
    String phoneNumber = _phoneNumberController.text;

    // Aquí puedes realizar la lógica para agregar el contacto a tu lista de contactos

    _nameController.clear();
    _phoneNumberController.clear();

    // Puedes mostrar un mensaje de éxito o redirigir al usuario a otra pantalla
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
          MaterialPageRoute(builder: (context) => ContactPage()), 
          );
          },
        ),
        title: Text('Añadir Contacto'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Nombre y Apellido',
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _phoneNumberController,
              decoration: InputDecoration(
                labelText: 'Numero de Celular',
              ),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _addContact,
              child: Text('Añadir Contacto'),
            ),
          ],
        ),
      ),
    );
  }
}

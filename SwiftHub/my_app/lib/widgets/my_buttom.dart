import 'package:flutter/material.dart';

class MyButtom extends StatelessWidget {
  const MyButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return myElevatedButton();
  }

  myElevatedButton() {
    return ElevatedButton.icon(
      icon: const Icon(
        Icons.save,
        color: Colors.white ,
      ),
      label: const Text('Guardar'),
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white, // letra
        backgroundColor: const Color.fromARGB(255, 6, 50, 86),
        shadowColor: Colors.black,
        elevation: 7,
        textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      onPressed: () {
        // onPressed es un evento onClick
        print('onPressed');
      },
      onLongPress: () {
        print('onLogPressed');
      },
    );
  }
}



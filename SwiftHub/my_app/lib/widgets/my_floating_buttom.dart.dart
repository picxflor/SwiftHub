import 'package:flutter/material.dart';
import 'package:my_app/pages/playing_page.dart';

class MyFloatingActionButton extends StatelessWidget {
  const MyFloatingActionButton({Key ? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const PlayingPage()));
    },
    backgroundColor: const Color.fromARGB(255, 6, 50, 86),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50.0),
    ),
    elevation: 10,
    tooltip: 'Agregar usuario',
    
    child: const Icon(
      Icons.add,
      size: 30,
      color: Colors.white,
    ));
  }
}

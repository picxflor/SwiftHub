import 'package:flutter/material.dart';
import 'package:my_app/pages/login_page.dart';
import 'package:my_app/pages/planificacion.dart';

void main() =>
    runApp(const MaterialApp(home: MyApp(), debugShowCheckedModeBanner: false));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SwiftHub',
      home: Scaffold(
        //backgroundColor: Color.fromARGB(255, 2, 31, 80),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'SwiftHub',
                    style: TextStyle(
                        color: Color.fromARGB(255, 254, 141, 2),
                        fontFamily: 'Poppins',
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Planea tu mundo de eventos con nosotros',
                    style:
                        TextStyle(fontFamily: 'Poppins', color: Colors.black),
                  )
                ],
              ),
              Container(
                alignment: Alignment
                    .center, // Esto centra la imagen dentro del contenedor
                child: Image.asset('assets/images/logo.png', width: 150, height: 150,),
              ),
              Center(
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => planificacion()));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 245, 159, 46),
                          
                            side: const BorderSide(color: Colors.black),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 110, vertical: 20),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      child: const Text('Comenzar'),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(198, 75, 200, 249), 
                            side: const BorderSide(color: Colors.black),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 100, vertical: 20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                        child: const Text('Iniciar sesión')),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

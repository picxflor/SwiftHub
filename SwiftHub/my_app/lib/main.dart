import 'package:flutter/material.dart';

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
        body: Padding(
          padding: const EdgeInsets.all(20.0),
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
                        color: Color.fromARGB(255, 178, 136, 9),
                        fontFamily: 'Poppins',
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Planea tu mundo de eventos con nosotros',
                    style: TextStyle(fontFamily: 'Poppins'),
                  )
                ],
              ),
              Image.asset('assets/images/logouno.jpg'),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        padding:
                           const  EdgeInsets.symmetric(horizontal: 100, vertical: 50),
                        maximumSize: const Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                            child: const Text('Comenzar', style: TextStyle(color: Colors.red),),
                  ),
                  ElevatedButton(
                      onPressed: () {}, child: const Text('Iniciar sesión', style: TextStyle(color: Colors.black),)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

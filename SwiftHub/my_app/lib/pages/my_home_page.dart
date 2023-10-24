import 'package:flutter/material.dart';
import 'package:my_app/widgets/my_buttom.dart';
import 'package:my_app/widgets/my_image.dart';
import 'package:my_app/widgets/my_floating_buttom.dart.dart';
import 'package:my_app/widgets/my_text.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      floatingActionButton: const MyFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        title: const Text('SwiftHub'),
        titleTextStyle: const TextStyle(
            color: Colors.white, fontSize: 30, fontFamily: 'Poppins'),
        backgroundColor: const Color.fromARGB(255, 6, 50, 86),

        //centerTitle: true,
        /*leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),*/
        actions: const [
          // con actions se agrega más iconos
          Padding(
            padding: EdgeInsets.only(
                right: 16.0), // Ajusta el valor según tu preferencia
            child: Icon(Icons.favorite, color: Colors.white),
          ),
          Padding(
            padding: EdgeInsets.only(
                right: 16.0), // Ajusta el valor según tu preferencia
            child: Icon(Icons.zoom_in_outlined, color: Colors.white),
          ),
          Padding(
            padding: EdgeInsets.only(
                right: 16.0), // Ajusta el valor según tu preferencia
            child: Icon(Icons.zoom_out, color: Colors.white),
          ),
        ],
      ),
      body: const Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [MyText(), MyImage(), SafeArea(child: MyButtom())],
      )),
    );
  }
}

import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack( //Stack para poner un widget encima de otro
          children: [
            Container(
              color: Colors.blue,
              width: double.infinity,
              height: size.height *0.4,
            )
          ],
        ),  
      ),
    );
  }
}
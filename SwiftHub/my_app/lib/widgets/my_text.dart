import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('¡Planea tu mundo de evento con nosotros!',
    style: TextStyle(
      color: Colors.black,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.normal,
      fontSize: 35 
      //wordSpacing: 15,
      ),
    textAlign: TextAlign.center,
    //maxLines: 1 -----> cuando el texto es mucho solo se mostrará 'x' línea
    //overflow: TextOverflow.ellipsis, //  mostrará ... que indica que hay más
    );
  }
}
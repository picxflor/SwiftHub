import 'package:flutter/material.dart';

class MyRichText extends StatelessWidget {
  const MyRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
          text: '¿Tienes una cuenta?',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.normal, wordSpacing: 5),
          children: [
            TextSpan(
                text: 'Iniciar sesión',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    wordSpacing: 5)),
          ]),
    );
  }
}

import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  const MyImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image(
      image: const AssetImage('assets/images/logo.png'),
      width: 90,
      height: 85,
      fit: BoxFit.fill,
      errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
        return const Text('Error al cargar la imagen');
      },
    );
  }
}
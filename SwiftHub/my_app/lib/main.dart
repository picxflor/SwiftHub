import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:my_app/pages/login_page.dart';
import 'package:my_app/pages/register_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState(){
    super.initState();
  }

   @override
   Widget build(BuildContext context){
    return GetMaterialApp(
      title: "SwiftHub",
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => LoginPage()),
        GetPage(name: '/register', page: () => RegisterPage())
      ],
      theme: ThemeData(
          primaryColor: Colors.blueAccent,
          colorScheme: const  ColorScheme(
              brightness: Brightness.light,
              primary: Colors.blueGrey,
              onPrimary: Colors.amberAccent,
              secondary: Colors.blueAccent,
              onSecondary: Colors.blueAccent,
              error: Colors.redAccent,
              onError: Colors.red,
              background: Colors.blueAccent,
              onBackground: Colors.blueAccent,
              surface: Colors.blueAccent,
              onSurface: Colors.blueAccent)),
    );
    
   }
}
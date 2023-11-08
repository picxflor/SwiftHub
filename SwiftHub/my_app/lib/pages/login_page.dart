import 'package:flutter/material.dart';
import 'package:my_app/pages/initial_page.dart';
import 'package:my_app/pages/recuperar_cuenta.dart';
import 'package:my_app/pages/register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  void goBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(size.height * 0.10),
              bottomRight: Radius.circular(size.height * 0.10),
            ),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blueAccent, Colors.grey],
                ),
              ),
              width: double.infinity,
              height: size.height * 0.3,
            ),
          ),
          Positioned(
            top: 25,
            left: 10,
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                goBack(context);
              },
              
            ),
          ),
          // IconoPersona(),
          loginForm(context)
        ],
      ),
    ));
  }

  SingleChildScrollView loginForm(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 130),
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            width: double.infinity,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 251, 243, 243),
                borderRadius: BorderRadius.circular(25),
                boxShadow: const [
                  //corchete pq es una lista de boxshasow
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 15, //para que poarezca sombra
                      offset: Offset(0, 5) //aumentar sombreado
                      )
                ]),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      width: 100,
                      height: 100,
                    )
                  ],
                ),
                const Text('Bienvenido a SwiftHub',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 20),
                SizedBox(
                  child: Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          autocorrect: false,
                          validator: (value) {
                            String pattern =
                                r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$';
                            RegExp regExp = RegExp(pattern);
                            return regExp.hasMatch(value ?? '')
                                ? null
                                : 'El correo no es válido';
                          },
                          decoration: const InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              hintText: 'email@hotmail.com',
                              labelText: 'email'),
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          autocorrect: false,
                          obscureText: true,
                          decoration: const InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              hintText: '*********',
                              labelText: 'password',
                              suffixIcon: Icon(Icons.remove_red_eye_outlined)),
                          validator: (value) {
                            return (value != null && value.length >= 6)
                                ? null
                                : 'La contraseña no es válida';
                          },
                        ),
                        const SizedBox(height: 20),
                        MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const InitialPage()));
                            }, // Define la acción al presionar el botón
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(14)),
                            ),
                            disabledColor: Colors.grey,
                            color: Colors.black,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 35, vertical: 10),
                              child: const Text(
                                'Iniciar sesión',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.white),
                              ),
                            )),
                        const SizedBox(height: 10),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const RecuperarCuenta()));
                          },
                          child: const Text(
                            '¿Olvidaste tu contraseña?',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const InitialPage(),
                                  ),
                                );
                              },
                              shape: const CircleBorder(),
                              child:Image.asset(
                                  'assets/images/google.png',
                                  width: 40, // Ancho de la imagen
                                  height: 40, // Alto de la imagen
                                ),
                              
                            ),
                            MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const InitialPage(),
                                  ),
                                );
                              },
                              shape:CircleBorder(), // Utiliza CircleBorder para hacerlo circular
                              
                              child: Image.asset(
                                  'assets/images/fb.webp',
                                  width: 40, // Ancho de la imagen
                                  height: 40, // Alto de la imagen
                                ),
                              
                            )
                          ],
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const MyRegisterPage()));
                          },
                          child: const Text(
                            '¿No tienes una cuenta?',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/pages/login_controller.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 50,
        child: _textBottom(),
      ),
      body: Stack(
        children: [
          _bgCover(context),
          _boxForm(context),
          Center(
            child: Column(
              children: [_imageCover(), _textAppName()],
            ),
          )
        ],
      ),
    );
  }

  Widget _buttomLogin() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: ElevatedButton(
        onPressed: () => controller.login(),
        child: Text('Login'),
      ),
    );
  }

  Widget _textFielPassdForm() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
      child: TextField(
        controller: controller.passwordController,
        keyboardType: TextInputType.emailAddress,
        obscureText: true,
        decoration:
            InputDecoration(hintText: 'Password', prefixIcon: Icon(Icons.lock)),
      ),
    );
  }

  Widget _textFieldEmailForm() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        controller: controller.emailController,
        keyboardType: TextInputType.emailAddress,
        decoration:
            InputDecoration(hintText: 'Email', prefixIcon: Icon(Icons.email)),
      ),
    );
  }

  Widget _imageCover() {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(top: 20, bottom: 25),
        child: Image.asset(
          'assets/images/logo.png',
        ),
        width: 120,
        height: 120,
      ),
    );
  }

  Widget _textForm() {
    return Container(
      margin: EdgeInsets.only(top: 35, bottom: 25),
      child: Text('INGRESA TU INFORMACIÓN',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
    );
  }

  Widget _boxForm(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.50,
      margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.32, left: 30, right: 30),
      decoration: BoxDecoration(color: Colors.white, boxShadow: <BoxShadow>[
        BoxShadow(
            color: Colors.black54, blurRadius: 15, offset: Offset(0, 0.75))
      ]),
      child: SingleChildScrollView(
        child: Column(
          children: [
            _textForm(),
            _textFieldEmailForm(),
            _textFielPassdForm(),
            _buttomLogin()
          ],
        ),
      ),
    );
  }

  Widget _textBottom() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('No tienes una cuenta?', style: TextStyle(color: Colors.black)),
        SizedBox(width: 10),
        GestureDetector(
          onTap: () => controller.goToRegister(),
          child: Text('Create una', style: TextStyle(color: Colors.blueAccent)),
        )
      ],
    );
  }

  Widget _textAppName() {
    return Text(
      'Inicio de sesión',
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }

  Widget _bgCover(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.35,
      color: Colors.lightBlue,
    );
  }
}
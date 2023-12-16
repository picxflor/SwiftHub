import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/pages/register_controller.dart';

// ignore: must_be_immutable
class RegisterPage extends StatelessWidget {
  RegisterController controller = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        
        _bgCover(context),
        _buttomBack(),
        _imageCover(),
        _boxForm(context),
      ]),
    );
  }

  Widget _buttomRegister() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      child: ElevatedButton(
        onPressed: () => controller.register(),
        child: Text('REGISTRARME'),
      ),
    );
  }

  Widget _textFielPassForm() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 2),
      child: TextField(
        controller: controller.passwordController,
        keyboardType: TextInputType.text,
        obscureText: true,
        decoration:
            InputDecoration(hintText: 'Password'),
      ),
    );
  }

  Widget _fieldLastNameForm() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 2),
      child: TextField(
        controller: controller.lastNameController,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            hintText: 'LastName'),
      ),
    );
  }

  Widget _fieldNameForm() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 2),
      child: TextField(
        controller: controller.firstNameController,
        keyboardType: TextInputType.text,
        
        decoration: InputDecoration(
            hintText: 'Firt Name'),
      ),
    );
  }

  Widget _fieldNumberForm() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 2),
      child: TextField(
        controller: controller.phoneController,
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
            hintText: 'CellPhone'),
      ),
    );
  }

  Widget _textFielConfirmPassForm() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 2),
      child: TextField(
        controller: controller.confirmPassController,
        keyboardType: TextInputType.text,
        obscureText: true,
        decoration: InputDecoration(
            hintText: 'Confirm Password'),
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
            InputDecoration(hintText: 'Email'),
      ),
    );
  }

  Widget _imageCover() {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(top: 20),
        alignment: Alignment.topCenter,
        child: GestureDetector(
            onTap: () {},
            child: Image.asset(
              'assets/images/user.png',
              width: 130,
              height: 130,
            )),
      ),
    );
  }

  Widget _buttomBack() {
    return SafeArea(
      child: Container(
        child: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back),
        ),
      ),
    );
  }

  Widget _textForm() {
    return Container(
      margin: EdgeInsets.only(top: 30, bottom: 25),
      child: Text('INGRESA TU INFORMACIÓN - REGISTER',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
    );
  }

  Widget _boxForm(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.68,
      margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.30, left: 30, right: 30),
      decoration: BoxDecoration(color: Colors.white, boxShadow: <BoxShadow>[
        BoxShadow(
            color: Colors.black54, blurRadius: 15, offset: Offset(0, 0.75))
      ]),
      child: SingleChildScrollView(
        child: Column(
          children: [
            _textForm(),
            _textFieldEmailForm(),
            _fieldNameForm(),
            _fieldLastNameForm(),
            _fieldNumberForm(),
            _textFielPassForm(),
            _textFielConfirmPassForm(),
            _buttomRegister()
          ],
        ),
      ),
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

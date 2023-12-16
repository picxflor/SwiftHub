import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void goToRegister(){
    Get.toNamed('/register');
  }

  void login(){
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    //para verlo en la parte consola
    print('Email, ${email}');
    print('Password, ${password}');

    //para verlo en la parte grafica
    Get.snackbar('Email', email);
    Get.snackbar('Password', password);

    if(isValidForm(email, password)){
      Get.snackbar('Valid Form ', 'All correct');
    }
  }

  bool isValidForm(String email, String password){
    if(!GetUtils.isEmail(email)){
      Get.snackbar('Invalid Form ', 'Invalid email');
      return false;
    }

    if(email.isEmpty){
      Get.snackbar('Invalid Form ', 'You might enter the email');
      return false;
    }

    if(password.isEmpty){
      Get.snackbar('Invalid Form ', 'You might enter the password');
      return false;
    }
    return true;

  }
}
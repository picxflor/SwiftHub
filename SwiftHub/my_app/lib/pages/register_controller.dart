import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'package:my_app/models/user.dart';
import 'package:my_app/providers/user_provider.dart';

class RegisterController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();

  UsersPorvider usersPorvider = UsersPorvider();

  void goToRegister() {
    Get.toNamed('/register');
  }

  void register() async {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    String lastName = lastNameController.text;
    String firstName = firstNameController.text;
    String phone = phoneController.text;
    String confirmPassword = confirmPassController.text.trim();

    //para verlo en la parte consola
    print('Email, ${email}');
    print('Password, ${password}');

    //para verlo en la parte grafica
    Get.snackbar('Email', email);
    Get.snackbar('Password', password);

    if (isValidForm(
        email, firstName, password, lastName, phone, confirmPassword)) {
      //definimos las variables a enviar
      User user = User(
          email: email,
          name: firstName,
          lastname: lastName,
          phone: phone,
          password: password);

      Response response = await usersPorvider.create(user);
      print("PRESONSE: ${response.body}");

      Get.snackbar('Valid Form ', 'All correct');
    }
  }

  bool isValidForm(String email, String password, String lastName,
      String firstName, String confirmPassword, String phone) {
    if (!GetUtils.isEmail(email)) {
      Get.snackbar('Invalid Form ', 'Invalid email');
      return false;
    }

    if (email.isEmpty) {
      Get.snackbar('Invalid Form ', 'You must enter the email');
      return false;
    }

    if (password.isEmpty) {
      Get.snackbar('Invalid Form ', 'You must enter the password');
      return false;
    }

    if (phone.isEmpty) {
      Get.snackbar('Invalid Form ', 'You must enter your phone number');
      return false;
    }

    if (lastName.isEmpty) {
      Get.snackbar('Invalid Form ', 'You must enter your last name');
      return false;
    }

    if (firstName.isEmpty) {
      Get.snackbar('Invalid Form ', 'You must enter your first name');
      return false;
    }

    if (confirmPassword.isEmpty) {
      Get.snackbar('Invalid Form ', 'You must confirm your password');
      return false;
    }

    if (password.trim() != confirmPassword.trim()) {
      Get.snackbar('Invalid Form', 'The passwords do not match');
    }

    return true;
  }
}

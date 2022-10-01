import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:project_wk16/app/login/model/login.dart';
import 'package:project_wk16/app/login/services/login_repo.dart';
import 'package:project_wk16/app/utils/colors.dart';
import 'package:project_wk16/app/widgets/bottomnav.dart';
import 'package:project_wk16/app/widgets/snackbar.dart';

class SignInController extends ChangeNotifier {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();

  logIn(context) async{
    if (formKey.currentState!.validate()) {
        LoginModel userData = LoginModel(
      email: emailController.text,
      paassword: passwordController.text,
    );
    print(emailController.text);
    print(passwordController.text);

    LoginResponse response = await LoginRepo().loginService(userData);
if (response.message == null) {
  print('object');
}
    if (response.message == "true") {
              Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) => const BottomNav(),
            ),
            (route) => false);
                    ScaffoldMessenger.of(context).showSnackBar(ShowDialogs.popUp('Sign In Succesfully',mainColor));

    } else{
      log(response.message.toString());
    }
    }
  }

  String? emailValidator(String? fieldContent) {
    if (fieldContent!.isEmpty) {
      return 'Please enter your email';
    } else if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(fieldContent)) {
      return 'Enter a valid email';
    }
    return null;
  }

  String? passwordValidator(String? fieldContent) {
    if (fieldContent!.isEmpty) {
      return 'Please enter your password';
    }
    if (fieldContent.length < 6) {
      return 'Requires atleast 6 characters';
    }
    return null;
  }
    }
  

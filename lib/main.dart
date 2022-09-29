import 'package:flutter/material.dart';
import 'package:project_wk16/app/login/controller/login.dart';
import 'package:project_wk16/app/login/view/loginpage.dart';
import 'package:project_wk16/app/signup/controller/signup.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SignUpController(),
        ),
        ChangeNotifierProvider(
          create: (context) => SignInController(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        home: const LogInScreen(),
      ),
    );
  }
}

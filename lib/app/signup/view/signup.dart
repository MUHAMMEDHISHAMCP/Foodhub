import 'package:flutter/material.dart';
import 'package:project_wk16/app/signup/controller/signup.dart';
import 'package:project_wk16/app/signup/model/signup_model.dart';
import 'package:project_wk16/app/signup/services/signup_services.dart';
import 'package:project_wk16/app/utils/colors.dart';
import 'package:project_wk16/app/utils/constheight.dart';
import 'package:project_wk16/app/widgets/clipper.dart';
import 'package:project_wk16/app/widgets/googlesign.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<SignUpController>(context);
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              ClipPath(
                clipper: ClipperWidget(),
                child: Container(
                  decoration: const BoxDecoration(
                      color: mainColor,
                      image: DecorationImage(
                          image: AssetImage('assets/logimg.png'))),
                  //  color: const Color.fromARGB(255, 66, 236, 72),
                  height: MediaQuery.of(context).size.height / 2.5,
                  width: double.infinity,
                ),
              ),
              // Positioned(
              //   left: MediaQuery.of(context).size.width / 2.8,
              //   top: MediaQuery.of(context).size.width / 1.7,
              //   child: const CircleAvatar(
              //     radius: 50,
              //     backgroundImage: AssetImage('assets/fhlogo.png'),
              //   ),
              // ),
            ],
          ),
          Form(
            key: prov.formKey,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Consumer<SignUpController>(
                  builder: (context, value, child) {
                    return Column(
                      children: [
                        TextFormField(
                          controller: value.userNameController,
                          validator: value.nameValidator,
                          decoration: const InputDecoration(
                            hintText: 'UserName',
                            contentPadding: EdgeInsets.all(10),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        kHeight15,
                        TextFormField(
                          controller: value.emailController,
                          validator: value.emailValidator,
                          decoration: const InputDecoration(
                            hintText: 'E-mail',
                            contentPadding: EdgeInsets.all(10),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        kHeight15,
                        Consumer<SignUpController>(
                          builder: (context, value, child) {
                           return TextFormField(
                            obscureText: true,
                            controller: value.passwordController,
                            validator: value.passwordValidator,
                            decoration:  InputDecoration(
                              hintText: 'Password',
                              contentPadding: EdgeInsets.all(10),
                              border: OutlineInputBorder(),
                              suffix: IconButton(onPressed: (){
                                value.isObscure = !value.isObscure;
                              }, icon:Icon(value.isObscure ? Icons.visibility_sharp : Icons.visibility_off_sharp) )
                            ),
                          );
                          },
                        ),
                        kHeight15,
                        TextFormField(
                          controller: value.confirmController,
                          validator: value.confirmPasswordValidator,
                          decoration: const InputDecoration(
                            hintText: 'Confirm Password',
                            contentPadding: EdgeInsets.all(10),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        kHeight20,
                        SizedBox(
                          width: 220,
                          height: 40,
                          child: ElevatedButton(
                            onPressed: () {
                           //   value.formKey.currentState!.validate();
                              final oj = SignUpModel(
                                userName: value.userNameController.text,
                                email: value.emailController.text,
                                password: value.passwordController.text,
                                confirmPassword: value.confirmController.text,
                                role: "ROLE_USER",
                              );
                              SignUpServices().singnUpRepo(oj);
                            },
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(150, 30),
                                primary: mainColor),
                            child: const Text('Sign Up'),
                          ),
                        ),
                        kHeight20,
                        const GoogleSign(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('ALREADY ON ACCOUNT?'),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              
                              },
                              child: const Text('Sign In'),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:project_wk16/app/login/view/loginpage.dart';
import 'package:project_wk16/app/signup/controller/signup.dart';
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
                  height: MediaQuery.of(context).size.height / 2.3,
                  width: double.infinity,
                ),
              ),
              Positioned(
                left: MediaQuery.of(context).size.width / 2.8,
                top: MediaQuery.of(context).size.width / 1.7,
                child: const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/fhlogo.png'),
                ),
              ),
            ],
          ),
          Form(
            key: prov.formKey,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Consumer<SignUpController>(
                  builder: (context, value, child) {
                   return  Column(
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
                       TextFormField(
                           controller: value.passwordController,
                           validator: value.passwordValidator,
                         decoration: const InputDecoration(
                           hintText: 'Password',
                           contentPadding: EdgeInsets.all(10),
                           border: OutlineInputBorder(),
                         ),
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
                             value.formKey.currentState!.validate();
                           },
                           style: ElevatedButton.styleFrom(
                               fixedSize: const Size(150, 30), primary: mainColor),
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

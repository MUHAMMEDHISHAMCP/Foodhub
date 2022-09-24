import 'package:flutter/material.dart';
import 'package:project_wk16/app/login/view/loginpage.dart';
import 'package:project_wk16/app/utils/colors.dart';
import 'package:project_wk16/app/utils/constheight.dart';
import 'package:project_wk16/app/widgets/clipper.dart';
import 'package:project_wk16/app/widgets/googlesign.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                top: MediaQuery.of(context).size.width / 2.1,
                child: const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/fhlogo.png'),
                ),
              ),
            ],
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  TextFormField(
                    //     controller: value.amountEditController,
                    decoration: const InputDecoration(
                      hintText: 'E-mail',
                      counterText: '',
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(),
                    ),

                    maxLength: 12,
                  ),
                  kHeight20,
                  TextFormField(
                    //     controller: value.amountEditController,
                    decoration: const InputDecoration(
                      hintText: 'Password',
                      counterText: '',
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  kHeight20,
                  TextFormField(
                    //     controller: value.amountEditController,
                    decoration: const InputDecoration(
                      hintText: 'Confirm Password',
                      counterText: '',
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  kHeight20,
                  SizedBox(
                    width: 220,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {},
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
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => const LogInScreen(),
                            ),
                          );
                        },
                        child: const Text('Sign In'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

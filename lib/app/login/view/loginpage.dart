import 'package:flutter/material.dart';
import 'package:project_wk16/app/signup/view/signup.dart';
import 'package:project_wk16/app/utils/constheight.dart';
import 'package:project_wk16/app/widgets/bottomnav.dart';
import 'package:project_wk16/app/widgets/clipper.dart';
import 'package:project_wk16/app/widgets/googlesign.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

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
                      color: Color.fromRGBO(47, 173, 103, 1),
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
                  foregroundColor: Colors.red,
                ),
              ),
            ],
          ),
          kHeight20,
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  TextFormField(
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
                    decoration: const InputDecoration(
                      hintText: 'Password',
                      counterText: '',
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(),
                    ),
                    maxLength: 12,
                  ),
                  kHeight20,
                  SizedBox(
                    width: 220,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                              Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const BottomNav(),
                            ),
                          );
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(150, 30),
                        primary: const Color.fromRGBO(47, 173, 103, 1),
                      ),
                      child: const Text('Sign In'),
                    ),
                  ),
                  kHeight30,
                  const GoogleSign(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('DONT HAVE AN ACCOUNT?'),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const SignUpScreen(),
                            ),
                          );
                        },
                        child: const Text('Sign Up'),
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

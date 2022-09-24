import 'package:flutter/material.dart';
import 'package:project_wk16/app/home/view/widgets/category.dart';
import 'package:project_wk16/app/home/view/widgets/slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children:  [
                 Text(
                  'What You Want \n For Dinner',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                 SilderWidget(),
                // Expanded(
                //     child:CategoryWidget())
              ],
            ),
          ),
        ),
      ),
    );
  }
}

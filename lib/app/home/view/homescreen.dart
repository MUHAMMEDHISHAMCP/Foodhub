import 'package:flutter/material.dart';
import 'package:project_wk16/app/home/view/widgets/category.dart';
import 'package:project_wk16/app/home/view/widgets/location.dart';
import 'package:project_wk16/app/home/view/widgets/restaurants.dart';
import 'package:project_wk16/app/home/view/widgets/search.dart';
import 'package:project_wk16/app/home/view/widgets/slider.dart';
import 'package:project_wk16/app/utils/colors.dart';
import 'package:project_wk16/app/utils/constheight.dart';
import 'package:project_wk16/app/widgets/maintitle.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: subColor,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                Column(
                  children: [
                    const Text(
                      'What You Want \n For Dinner',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    kheight10,
                    const LocationWidget(),
                    kheight10,
                    const SearchField(),
                    kheight10,
                    const SilderWidget(),
                    kheight10,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        MainTitle(
                          text: 'Categories',
                          fontSize: 18,
                          weight: FontWeight.w400,
                        ),
                        MainTitle(
                          text: 'See more ▶',
                          fontSize: 12,
                          weight: FontWeight.bold,
                        ),
                      ],
                    ),
                    kheight10,
                    CategoryWidget(),
                    kheight10,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          MainTitle(
                            text: 'Restaurants',
                            fontSize: 18,
                            weight: FontWeight.w400,
                          ),
                          MainTitle(
                            text: 'View all ▶',
                            fontSize: 12,
                            weight: FontWeight.bold,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children:
                          List.generate(10, (index) => RestaurantsList())),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

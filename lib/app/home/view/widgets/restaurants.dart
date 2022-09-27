import 'package:flutter/material.dart';
import 'package:project_wk16/app/restaurant/restaurant_details.dart';

class RestaurantsList extends StatelessWidget {
  const RestaurantsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => RestaurantDetails(),));
      },
      child: Column(
        children: [
          Image.asset(
            'assets/kfc.png',
            width: MediaQuery.of(context).size.width / 3.5,
            height:100,
          ),
          const Text(
            'KFC',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.start,
          )
        ],
      ),
    );
  }
}

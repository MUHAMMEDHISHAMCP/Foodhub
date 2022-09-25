import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget({Key? key}) : super(key: key);

  final List<String> imageList = [
    'https://www.pngfind.com/pngs/m/222-2220705_burger-png-image-background-burger-clipart-png-transparent.png',
    'https://thumbs.dreamstime.com/b/pepperoni-pizza-italian-pizza-white-background-isolated-95232406.jpg',
    'https://thumbs.dreamstime.com/b/pepperoni-pizza-italian-pizza-white-background-isolated-95232406.jpg',
    'https://www.pngfind.com/pngs/m/222-2220705_burger-png-image-background-burger-clipart-png-transparent.png',
    'https://www.pngfind.com/pngs/m/222-2220705_burger-png-image-background-burger-clipart-png-transparent.png',
    'https://thumbs.dreamstime.com/b/pepperoni-pizza-italian-pizza-white-background-isolated-95232406.jpg',
    'https://thumbs.dreamstime.com/b/pepperoni-pizza-italian-pizza-white-background-isolated-95232406.jpg',
    'https://www.pngfind.com/pngs/m/222-2220705_burger-png-image-background-burger-clipart-png-transparent.png',
  ];

  final List<String> categoryList = [
    'Burger',
    'pizza',
    'Burger',
    'pizza',
    'Burger',
    'pizza',
    'Burger',
    'pizza',
    
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return SizedBox(
          child: Column(
            children: [
              Image.network(
                imageList[index],
                scale: 1.0,
                height: 30,
              ),
              Text(categoryList[index])
            ],
          ),
        );
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: MediaQuery.of(context).size.width /
            (MediaQuery.of(context).size.height / 2.5),
        crossAxisCount: 4,
        mainAxisSpacing: 5,
        crossAxisSpacing: 3,
      ),
      itemCount: 8,
    );
  }
}

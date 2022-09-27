import 'package:flutter/material.dart';
import 'package:project_wk16/app/utils/colors.dart';
import 'package:project_wk16/app/widgets/maintitle.dart';

import '../../widgets/maintitle.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back,color: kBlack,),
        backgroundColor: backgroundColor,
        elevation: 0,
        title:const MainTitle(text: 'My Favorites', fontSize: 22,color:kBlack,weight: FontWeight.w500,)
      ),
      backgroundColor: backgroundColor,
      body: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  color: Colors.grey.shade200,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height / 7,
                    child: ListTile(
                      leading: SizedBox(
                        child: Image.asset('assets/kfc fried.png'),
                      ),
                      title: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          'Kfc Fried Chicken',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          MainTitle(
                            text: 'Kfc Calicut',
                            weight: FontWeight.w300,
                            fontSize: 14,
                          ),
                          MainTitle(
                            text: '₹ 499',
                            fontSize: 16,
                            weight: FontWeight.bold,
                          ),
                        ],
                      ),
                      trailing:  Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Icon(
                          Icons.favorite_rounded,
                          color: Colors.red.shade300,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              itemCount: 5,
            ),
    );
  }
}
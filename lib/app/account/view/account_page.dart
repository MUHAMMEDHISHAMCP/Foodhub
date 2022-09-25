import 'package:flutter/material.dart';
import 'package:project_wk16/app/utils/colors.dart';
import 'package:project_wk16/app/utils/constheight.dart';
import 'package:project_wk16/app/widgets/maintitle.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(52, 195, 99, 1),
                        Color.fromRGBO(127, 186, 190, 1),
                      ],
                      begin: FractionalOffset.centerLeft,
                      end: FractionalOffset.centerRight,
                      tileMode: TileMode.clamp),
                  // color: mainColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              // color: mainColor,
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 4,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        MainTitle(
                          text: 'User NAme',
                          fontSize: 16,
                          weight: FontWeight.bold,
                        ),
                        MainTitle(
                          text: 'E-mail id',
                          fontSize: 14,
                          weight: FontWeight.w300,
                        )
                      ],
                    ),
                    const Icon(Icons.edit)
                  ],
                ),
              ),
            ),
            kheight10,
            const ListTile(
              leading: Icon(Icons.location_on_sharp),
              title: Text(
                'Saved address',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.notifications),
              title: Text(
                'Notification',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.card_giftcard_sharp),
              title: Text(
                'My Orders',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.perm_contact_cal_rounded),
              title: Text(
                'Contact Us',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.star),
              title: Text(
                'Rate this app',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.logout),
              title: Text(
                'Logout',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

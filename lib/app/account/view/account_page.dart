import 'package:flutter/material.dart';
import 'package:project_wk16/app/account/view/widgets/account_setting.dart';
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
                  color: mainColor,
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
            AccountSettings(
              icon: const Icon(Icons.location_on_sharp),
              title: 'Saved address',
              onTap: () {},
            ),

            AccountSettings(
              icon: const Icon(Icons.notifications),
              title: 'Notification',
              onTap: () {},
            ),

            AccountSettings(
              icon: const Icon(Icons.card_giftcard_sharp),
              title: 'My Orders',
              onTap: () {},
            ),
            // const ListTile(
            //   leading: Icon(Icons.card_giftcard_sharp),
            //   title: Text(
            //     'My Orders',
            //     style: TextStyle(fontWeight: FontWeight.w500),
            //   ),
            // ),
            AccountSettings(
              icon: const Icon(Icons.perm_contact_cal_rounded),
              title: 'Contact Us',
              onTap: () {},
            ),

            AccountSettings(
              icon: const Icon(Icons.star),
              title: 'Rate this app',
              onTap: () {},
            ),

            AccountSettings(
              icon: const Icon(Icons.logout),
              title: 'Logout',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

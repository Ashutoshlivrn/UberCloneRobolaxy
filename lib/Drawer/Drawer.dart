import 'package:flutter/material.dart';
import 'package:uberclone/Drawer/My_Wallet/My_Wallet.dart';

import '../constants/colors.dart';


class DrawerMenu extends StatefulWidget {
  const DrawerMenu({super.key});

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  Widget listText(String text) {
    return Text(
      text,
      style: const TextStyle(
          fontWeight: FontWeight.w500, color: Colors.black87, fontSize: 16),
    );
  }

  Widget listIcon(IconData icon) {
    return Icon(
      icon,
      color: Colors.grey.shade500,
      size: 27,
    );
  }
  @override
  Widget build(BuildContext context) {
    var size10 = MediaQuery.of(context).size.height / 70;
    return Drawer(
      width: size10 * 24,
      backgroundColor: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: yellowish,
              height: size10 * 22,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size10 * 6,
                  ),
                  Transform.translate(
                    offset: Offset(-size10 * 6, 0),
                    child: SizedBox(
                        child: CircleAvatar(
                          minRadius: size10 * 4,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            minRadius: size10 * 4 - 2,
                            backgroundColor: Colors.black,
                          ),
                        )),
                  ),
                  SizedBox(
                    height: size10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: size10 * 2),
                    child: Text(
                      'Larry Davis',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: white70),
                    ),
                  ),
                  SizedBox(
                    height: size10,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: size10 * 2 - 2),
                    height: size10 * 2,
                    width: size10 * 10,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          'Cash',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          '2500',
                          style: TextStyle(
                              color: yellowish, fontWeight: FontWeight.w500),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 10,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 3,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size10,
            ),
            SizedBox(
              height: size10 * 5,
              child: ListTile(
                  onTap: () {
                    Scaffold.of(context).closeDrawer();
                  },
                  horizontalTitleGap: size10 * 0.5,
                  leading: listIcon(Icons.home),
                  title: listText('Home')),
            ),
            SizedBox(
              height: size10 * 5,
              child: ListTile(
                  onTap: () {
                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyWalletClass()  ,));
                  },
                  horizontalTitleGap: size10 * 0.5,
                  leading: listIcon(Icons.wallet),
                  title: listText('My Wallet')),
            ),
            SizedBox(
              height: size10 * 5,
              child: ListTile(
                  onTap: () {},
                  horizontalTitleGap: size10 * 0.5,
                  leading: listIcon(Icons.history),
                  title: listText('History')),
            ),
            SizedBox(
              height: size10 * 5,
              child: ListTile(
                  onTap: () {},
                  horizontalTitleGap: size10 * 0.5,
                  leading: listIcon(Icons.notifications),
                  title: listText('Notifications')),
            ),
            SizedBox(
              height: size10 * 5,
              child: ListTile(
                  onTap: () {},
                  horizontalTitleGap: size10 * 0.5,
                  leading: listIcon(Icons.card_giftcard),
                  title: listText('Invite Friends')),
            ),
            SizedBox(
              height: size10 * 5,
              child: ListTile(
                  onTap: () {},
                  horizontalTitleGap: size10 * 0.5,
                  leading: listIcon(Icons.settings),
                  title: listText('Settings')),
            ),
            SizedBox(
              height: size10 * 5,
              child: ListTile(
                  onTap: () {},
                  horizontalTitleGap: size10 * 0.5,
                  leading: listIcon(Icons.logout),
                  title: listText('Logout')),
            ),
          ],
        ),
      ),
    ) ;
  }
}

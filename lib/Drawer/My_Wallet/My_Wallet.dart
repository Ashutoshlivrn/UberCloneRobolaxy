import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:uberclone/Drawer/My_Wallet/My_Wallet_Containers.dart';
import 'package:uberclone/constants/colors.dart';



class MyWalletClass extends StatefulWidget {
  const MyWalletClass({super.key});

  @override
  State<MyWalletClass> createState() => _MyWalletClassState();
}

class _MyWalletClassState extends State<MyWalletClass> {
  @override
  Widget build(BuildContext context) {
    var size10 = MediaQuery.of(context).size.height / 70;
    return Scaffold(
      body: Stack(
        children: [
          //orange container at the top
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: walletContainer1(context),
          ),

          //white part with payment methods
          Positioned(
            top: size10 * 32.5,
            left: 0,
            right: 0,
           child: walletContainer2(context),
          ),


          //slider part at the center
          Positioned(
            top: size10 * 18,
            left: size10 ,
            right: size10 ,
            child: walletContainer3(context),
          ),
        ],
      ),
    );
  }
}

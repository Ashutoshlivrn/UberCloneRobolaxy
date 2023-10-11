import 'package:flutter/material.dart';
import 'package:uberclone/Drawer/My_Wallet/My_Wallet.dart';
import 'package:uberclone/Home/Home.dart';
import 'package:uberclone/Onboarding/Onboarding.dart';
import 'package:uberclone/Phone_Verify/Phone_Verify.dart';
import 'package:uberclone/Set_Up_Gps/Set_Up_Gps.dart';
import 'package:uberclone/Sign%20In%20Up/Sign_In_Up.dart';
import 'package:uberclone/Splash_Screen/Splash_Screen.dart';
import 'package:uberclone/rough1.dart';

import 'Rough.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:

     // SplashScreen()
      //Onboarding()
      //SetUpGps()
       //SignInUp()
     // PhoneVerify()
     // Home()
      MyWalletClass()
 // MyHomePage()





    );
  }
}



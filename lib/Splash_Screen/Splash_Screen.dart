import 'dart:async';

import 'package:flutter/material.dart';
import 'package:uberclone/Onboarding/Onboarding.dart';
import 'package:uberclone/Rough.dart';
import 'package:uberclone/constants/colors.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void changeScreen(){
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
        return const Onboarding();
      }));
    });
  }

  void initState() {
    changeScreen();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size10 = MediaQuery.of(context).size.height / 70;
    return Scaffold(
      backgroundColor: yellowish,

      body: SingleChildScrollView(
        child: Column(

          children: [
            SizedBox(height: size10* 28,),
             Center(child: Image.asset('images/icon/mainlogo.png'),),
             SizedBox(height: size10,),
             Text('Uber',style: TextStyle(color: Colors.white, fontSize: 70, fontWeight: FontWeight.w600 ),),
            SizedBox(height: size10 * 0.3,),
            Text('Developed by Robolaaaaxy',style: TextStyle(color: Color.fromARGB( 255,251, 234, 191,), fontSize: 16, fontWeight: FontWeight.w500, ),),
            SizedBox(height: size10 * 1.7,),
            Container(
              height: size10 * 22,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/mountain1.png'),fit: BoxFit.fill)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: size10* 12,
                    width: MediaQuery.of(context).size.width,
                    child:  Image.asset('images/mountain1.png',fit: BoxFit.fill,),
                  )
                ],
              ),
            ),


          ],
        ),
      ) ,
    );
  }
}

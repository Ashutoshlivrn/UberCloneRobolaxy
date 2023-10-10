import 'package:flutter/material.dart';
import 'package:uberclone/Rough.dart';
import 'package:uberclone/constants/colors.dart';

import 'Containers.dart';


class SignInUp extends StatefulWidget {
  const SignInUp({super.key});

  @override
  State<SignInUp> createState() => _SignInUpState();
}

class _SignInUpState extends State<SignInUp> {
  @override
  Widget build(BuildContext context) {
    var size10 = MediaQuery.of(context).size.height / 70;
    return Scaffold(

      resizeToAvoidBottomInset:  true,
      body: Stack(
        children: [
          // Orange container at the bottom
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container1(context),
          ),
          // White container in the middle
          Positioned(
            top: size10 * 37.5,
            left: 0,
            right: 0,
            child: Container2(context),
          ),
          // Overlapping blue container with tabs
          Positioned(
            top: size10 * 24.4,
            left: size10 * 2,
            right: size10 * 2,
            child: Container3(context),
          ),
        ],
      ),
    );
  }
}

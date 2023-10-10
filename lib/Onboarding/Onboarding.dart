import 'package:flutter/material.dart';
import 'package:uberclone/Onboarding/Onboarding_Content.dart';
import 'package:uberclone/Set_Up_Gps/Set_Up_Gps.dart';

import '../constants/colors.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentIndex = 0;
  PageController pageController = PageController();

  @override
  void initState() {
    // TODO: implement initState
    pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size10 = MediaQuery.of(context).size.height / 70;

    Container buildDots(int index, BuildContext context) {
      return Container(
        height: size10 * 0.6,
        width: currentIndex == index ? size10 * 3.6 : size10 * 2.47,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: currentIndex == index ? blue : Colors.white,
        ),
      );
    }

    return Scaffold(
      backgroundColor: yellowish,
      body: Column(
        children: [
          SizedBox(
            height: size10 * 3.7,
          ),
          Expanded(
            child: PageView.builder(
              controller: pageController,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
                //pageController.nextPage(duration: Duration(seconds: 1), curve: Curves.bounceInOut );
              },
              itemCount: contents.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    SizedBox(
                      height: size10 * 12,
                    ),
                    Container(
                      height: size10 * 20,
                      width: size10 * 20,
                      decoration: BoxDecoration(
                          color: Colors.black, shape: BoxShape.circle),
                    ),
                    SizedBox(
                      height: size10 * 4.2,
                    ),
                    Text(contents[index].title,
                        style: TextStyle(
                          color: white70,
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                        )),
                    SizedBox(
                      height: size10 * 3,
                    ),
                    SizedBox(
                      width: 250,
                      child: Text(contents[index].description,
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: white70,
                          ),
                          textAlign: TextAlign.center),
                    ),
                    SizedBox(
                      height: size10 * 4,
                    ),
                    Visibility(
                      visible: index == 2,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => SetUpGps() ,));
                        },
                        child: Container(
                          width: size10 * 19,
                          height: size10 * 4.5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: blue),
                          child: Center(
                            child: Text("Get started!",
                                style: TextStyle(
                                  color: white70,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                )),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Container(
            width: size10 * 8.6,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(4)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  contents.length, (index) => buildDots(index, context)),
            ),
          ),
          SizedBox(
            height: size10 * 2,
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:uberclone/Sign%20In%20Up/Sign_In_Up.dart';
import 'package:uberclone/constants/colors.dart';


class SetUpGps extends StatefulWidget {
  const SetUpGps({super.key});

  @override
  State<SetUpGps> createState() => _SetUpGpsState();
}

class _SetUpGpsState extends State<SetUpGps> {
  @override
  Widget build(BuildContext context) {
    var size10 = MediaQuery.of(context).size.height / 70;
    return Scaffold(
      backgroundColor: yellowish,
      body: Column(
        children: [
          SizedBox(height:  size10 * 10,),
          Stack(
            children:[
                Positioned(
                    bottom: 0,
                    child: Container(
                        height: size10 * 8,
                        width: size10 * 15.5,
                        child: Image.asset('images/mountain1.png',fit: BoxFit.fill,color: Colors.blue.shade700,)
                    )
                ),
              Positioned(
                  right: size10 * 10 ,

                  bottom: - size10 * 3.5,
                  child: Container(
                      height: size10 * 14,
                      width: size10 * 15,
                      child: Image.asset('images/icon/group_icon.png',)
                  )
              ),
              Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                      height: size10 * 11,
                      width: size10 * 19.7,
                      child: Image.asset('images/mountain1.png',fit: BoxFit.fill,color: Colors.blueAccent.shade700,)
                  )
              ),
              Container(
                height: size10 * 19,
                width: MediaQuery.of(context).size.width,
                child: Image.asset('images/mountain1.png',fit: BoxFit.fill,),
              ),
            ]
          ),

          SizedBox(height:  size10 * 8,),
          Text(
              "Hi, nice to meet you!",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: Colors.white
              )
          ),
          SizedBox(height:  size10 * 3,),
          SizedBox(
            width: size10 * 25,
            child: Text(
                "Choose your location to start find restaurants around you.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17,
                  color: white70,
                  fontWeight: FontWeight.w400,
                )
            ),
          ),
          SizedBox(height:  size10 * 5,),
          Container(
              width: 304,
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: blue),
                  borderRadius: BorderRadius.circular(8)),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_on_outlined,color: blue,),
                  SizedBox(width: size10 * 0.1,),
                  Text(
                      "Use current location",
                      style: TextStyle(
                        color: blue,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      )
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: size10 * 7,),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignInUp()  ,));
            },
            child: const Text(
              'Select it manually',
              style: TextStyle(
                height: 2,
                color: Colors.red,
                decoration: TextDecoration.underline,
                decorationColor: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
